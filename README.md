# Fun Scheme Compiler (FSC)

#### This compiler project was developed in my [CMSC430: Introduction to Compilers Course at the University of Maryland College Park](https://www.cs.umd.edu/class/fall2017/cmsc430/)  under the advising and teaching of [Prof. Thomas Gilray](https://thomas.gilray.org/).

#### FSC compiles scheme code in [this](https://www.cs.umd.edu/class/fall2017/cmsc430/assignment5.html) input language down to LLVM IR. Each assignment of the course compartmentalized components of the final compiler into separate phases. The phases are as follows:

1. Top-level: Adds implicit begin forms explicitly, quotes all datums, desugars defines nested in such begin forms to a letrec*, desugar quasiquote and unquote, and implements a simple pattern matcher.
2. Desugar: Simplifies complex language forms such as exceptions, dynamic-wind, call/cc, first-class primitives, etc. to terms in a small core language including only a let, lambda-calculus, conditionals, set!, call/cc, and explicit primitive-operation forms.
3. Assignment Convert: Removes all uses of set! from the input language by boxing all mutable local variables with vector forms (make-vector, vector-set!, and vector-ref).
4. Administrative Normal Form (ANF) Convert: Administratively let-binds any subexpressions, thus forcing an explicit order of evaluation. Any let forms with multiple right-hand sides are also flattened into multiple let forms.
5. Continuation Passing Style (CPS) Convert: Remove all function call returns and instead, pass the current continuation to be invoked at return points. This effectively removes any usage of call/cc.
6. Closure Conversion: Removes all lambda abstractions and replaces them with a closure. Any remaining atomic expressions (except variable references) are lifted to their own let bindings. Furthermore, all function calls are turned into unary functions that explicitly take one argument as an argument list.
7. LLVM: All closure converted code is then translated into LLVM functions and appended to combined.ll, to then be ultimately compiled with llvm. 

## To list available tests:

    racket tests.rkt

## To run all available tests:

    racket tests.rkt all

## To run a selected test:

    racket tests.rkt <test-name>

##### I, Michael Reininger, pledge on my honor that I have not given or received any unauthorized assistance on this project.
