# Fun Scheme Compiler (FSC)

<p align="center">
This repository contains the source code and documentation for the Fun Scheme Compiler (FSC).
</p>

#### This project was developed in my [CMSC430: Introduction to Compilers Course at the University of Maryland College Park](https://www.cs.umd.edu/class/fall2017/cmsc430/) under the advising and teaching of [Prof. Thomas Gilray](https://thomas.gilray.org/).

#### FSC compiles [Scheme](https://en.wikipedia.org/wiki/Scheme_(programming_language)) code in [this](https://www.cs.umd.edu/class/fall2017/cmsc430/assignment5.html) input language to LLVM IR. Each assignment of CMSC430 compartmentalized components of the final compiler into separate phases, namely assignments 2 through 5 on the course webpage.

#### At a high-level, the phases of FSC are as follows:

1. Top-level: Adds implicit begin forms explicitly, quotes all datums, desugars defines nested in such begin forms to a letrec*, desugar quasiquote and unquote, and implements a simple pattern matcher.
2. Desugar: Simplifies complex language forms such as exceptions, dynamic-wind, call/cc, first-class primitives, etc. to terms in a small core language including only a let, lambda-calculus, conditionals, set!, call/cc, and explicit primitive-operation forms.
3. Assignment Convert: Removes all uses of set! from the input language by boxing all mutable local variables with vector forms (make-vector, vector-set!, and vector-ref).
4. Administrative Normal Form (ANF) Convert: Administratively let-binds any subexpressions, thus forcing an explicit order of evaluation. Any let forms with multiple right-hand sides are also flattened into multiple let forms.
5. Continuation Passing Style (CPS) Convert: Remove all function call returns and instead, pass the current continuation to be invoked at return points. This effectively removes any usage of call/cc.
6. Closure Conversion: Removes all lambda abstractions and replaces them with a closure. Any remaining atomic expressions (except variable references) are lifted to their own let bindings. Furthermore, all function calls are turned into unary functions that explicitly take one argument as an argument list.
7. LLVM: All closure converted code is then translated into LLVM functions and appended to combined.ll, to then be ultimately compiled with llvm.

## To list available tests:
```sh
$ racket tests.rkt
```
## To run all available tests:
```sh
$ racket tests.rkt all
```
## To run a selected test:
```sh
$ racket tests.rkt <test-name>
```

# Example Runs:
```sh
$ racket tests.rkt amb
Test passed!
```

```sh
$ racket tests.rkt div-0
#<void>
#<void>
Test passed!
```
Test `div-0` is a sample test of what happens when a program divides by 0. This is a run-time exception. 
...

# (Basic) Supported Primitive Operations:
| Primitive | Description | Return Type | Number of Arguments | Arguments Type |
| --------- | ----------- | ----------- | ------------------- | -------------- |
| = | Numerically equal | Boolean (#t / #f) | 2 | Int x Int |
| < | Numerically less | Boolean (#t / #f) | 2 | Int x Int |
| > | Numerically greater | Boolean (#t / #f) | 2 | Int x Int |
| <= | Numerically less than or equal | Boolean (#t / #f) | 2 | Int x Int |
| >= | Numerically greater than or equal | Boolean (#t / #f) | 2 | Int x Int |
| + | Numerically sum | Int | 2 | Int x Int |
| - | Numerically subtract | Int | 2 | Int x Int |
| * | Numerically multiply | Int | 2 | Int x Int |
| / | Numerically divide | Int | 2 | Int x Int |

For example, here is usage of the primitive `+`:

```scheme
(+ 1 2) ; 3
```

<a href="SUPPORTED.md">Learn more</a> about all of FSC's supported primitve operations.

# Identified runtime errors and fixes
The following 5 runtime errors have been identified and fixed with properly raised exceptions:

1. Division by zero.
    Originally, any primitive division by 0 caused execution of the binary to hang and eventually timeout.
    This issue was fixed by throwing a run-time error throughs assuring that the parameter `b` of
    
    ```c++
    u64 prim__47(u64 a, u64 b)
    ```

    in `header.cpp` is a non-zero value:

    ```c++
    int b_int = DECODE_INT(b);
    if (b_int == 0) fatal_err("(prim / a b); b cannot be 0");

    ...
    ```

    Tests for this fix are: `div-0.scm`, `div-1.scm`, and `div-2.scm`.

2. Non-function application.
    Originally, any non-function application caused a segmentation fault at run-time due to a call upon an invalid closure pointer (ie. a value, etc).
    This was fixed by modifying `header.cpp` as follows:

    1. Introduce a new procedure to verify that a pointer is indeed a closure via:

    ```c++
    u64 expect_closure(u64* cloptr)
    {   
        ASSERT_TAG(ENCODE_CLO(cloptr), CLO_TAG, "Expected closure (in expect_closure). Non-function value applied.");
        return ENCODE_CLO(cloptr);
    }
    ```

    2. Add to `closure-convert.rkt` so that at any closure-application - `(clo-app fx xs ...)`, the pointer to the closure (`clo-ptr`) is passed to `expect_closure`, which is a procedure that checks at run-time if a pointer is tagged as a `CLO_TAG`.

    Tests for this fix are: `non-func-0.scm`, `non-func-1.scm`, and `non-func-2.scm`.

3. A memory-usage cap.
    The original implementation of the provided compiler did not include an adjustable memory usage cap. This was added by defining a memory cap to 256 mb

    ```c++
    #define MEM_CAP 268435456
    ```

    at the top of `header.cpp` and by adding a counter

    ```c++
    u64 current_mem_used
    ```

    to track the number of bytes allocated in the `alloc` procedure in `header.cpp`.

    Upon each subsequent call of `alloc`, `current_mem_used` is incremented by the byte size allocated and compared to the defined `MEM_CAP` if it is numerically less. Otherwise, it fails with a raised `fatal_err` run-time exception and presents an error message. Feel free to adjust `MEM_CAP` to your needs/liking.

    Tests for this fix are: `mem-cap-0.scm`, `mem-cap-1.scm`, and `mem-cap-2.scm`.

4. Function is provided too many arguments.
    This was fixed for all primitive operations. Originally, a primitive operation could accept a number of arguments (more than as specified in the racket-lang documentation). This issue has been fixed by adding a pass to `proc->llvm` in `closure-convert.rkt` named `valid_op?`. 

    This passed is called at any primitive operation emission prior to llvm conversion. Here, `valid_op?` matches on the passed primitive operation (`op`) and checks that the number of arguments passed to that operation (`ys`) meet the criteria provided by the racket-lang documentation.

    ```scm
    (define (valid_op? op ys)
        (match op
            ['cons? (= (length ys) 1)]
            ['null? (= (length ys) 1)]
            ['cons (= (length ys) 2)]
            ...
        )
    )
    ```

    If a function is provided too many arguments, then `#f` is returned. Then, at LLVM IR emission, a call to `u64 too_many_args()` is issued and a `fatal_err()` is presented - thus, causing a run-time error. Otherwise, `#t` is returned and the proper LLVM IR is emitted.

    Tests for this fix are: `too-many-0.scm`, `too-many-1.scm`, and `too-many-2.scm`.

5. Function is provided too few arguments.
    This was fixed by throwing a run-time exception when there are arguments missing to a function application. Since all arguments are passed to an application site as a list (`cons`) of arguments, if there are not enough arguments passed, then the call to `prim car` and `prim cdr` will raise a run-time error since all arguments have been consumed.

    Tests for this fix are: `too-few-0.scm`, `too-few-1.scm`, and `too-few-2.scm`.

## 

## Boehm Garbage Collector
### Some short description here and a link to their project repo.

#### I had to make some changes to how `utils.rkt` calls clang++ at compile time to work with my workstation, but feel free to modify the lines to fit your needs.
Specifically, I modified lines 611 and 617. 

    [611] (system (string-append clang++-path " -std=c++11 header.cpp " " -I/home/bdwgc/include -pthread -S -emit-llvm -o header.ll /usr/local/lib/libgc.a"))
    [617] (system (string-append clang++-path " -std=c++11 combined.ll -I/home/bdwgc/include -pthread -o bin /usr/local/lib/libgc.a"))

I was able to integrate bgwdc with header.cpp and change the tagging scheme...

## Disclaimer:
#### This compiler should not be used in any serious applications - it is meant to be learning project. With more time and help, I would have completed the project to its entirety. Even with the slight extension, however, I was extremely preoccupied with studying for other final exams, travelling home, etc. so I did what I could within the time given and I refuse to stress over this.


##### I, Michael Reininger, pledge on my honor that I have not given or received any unauthorized assistance on this project.
