# Advanced Supported Primitives

### `cons? v`
Description: Checks if the provided argument `v` is a cons cell (list).

Example:
```scheme
(cons? '()) ; #t
(cons? 21)  ; #f
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: List 
_____
### `null? v`
Description: Checks if the provided argument `v` is null `'()`.

Example:
```scheme
(null? '()) ; #t
(null? '1)  ; #f 
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `cons a b`
Description: Creates a new cons cell (list) with its first element being a and second element being b. 

Example:
```scheme
(cons 1 2) ; '(1 . 2)
(cons 1 (cons 2 (cons 3 '()))) ; '(1 2 3)
```

Return type: cons

Number of arguments: 2

Argument types: Any
_____
### `car lst`
Description: Returns the first element of a list. If `lst` is not a list or is null, a run-time exception is thrown.

Example:
```scheme
(car '(1 2 3 4)) ; 1
(car '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `cdr lst`
Description: Returns all elements of a list except for the first. If `lst` is not a list or is null, a run-time exception is thrown.

Example:
```scheme
(cdr '(1 2 3 4 5 6 7)) ; '(2 3 4 5 6 7)
(cdr '(1 2)) ; '(2)
```

Return type: List

Number of arguments: 1

Argument types: List
_____
### `first lst`
Description: Returns the first element of a list. If `lst` has fewer than 1 element, then a run-time exception is thrown.

Example:
```scheme
(first '(1 2 3 4)) ; 1
(first '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `second lst`
Description: Returns the second element of a list. If `lst` has fewer than 2 elements, then a run-time exception is thrown.

Example:
```scheme
(second '(1 2 3 4)) ; 2
(second '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `third lst`
Description: Returns the third element of a list. If `lst` has fewer than 3 elements, then a run-time exception is thrown.

Example:
```scheme
(third '(1 2 3 4)) ; 3
(third '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `fourth lst`
Description: Returns the fourth element of a list. If `lst` has fewer than 4 elements, then a run-time exception is thrown.

Example:
```scheme
(fourth '(1 2 3 4)) ; 4
(fourth '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `fifth lst`
Description: Returns the fifth element of a list. If `lst` has fewer than 5 elements, then a run-time exception is thrown.

Example:
```scheme
(fifth '(1 2 3 4 5)) ; 5
(fifth '()) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: Any

Number of arguments: 1

Argument types: cons
_____
### `list v ...`
Description: Returns a list created by the elements in `v`.

Example:
```scheme
(list) ; '()
(list 1) ; '(1)
(list 'a 1 (+ 1 2) "c") ; '(a 1 3 "c")

```

Return type: list

Number of arguments: 0 or more

Argument types: Any
_____
### `length lst`
Description: Returns the length of a list `lst`.

Example:
```scheme
(length '()) ; 0
(length '(1 2 3)) ; 3
```

Return type: Int

Number of arguments: 1

Argument types: List
_____
### `drop lst pos`
Description: Returns a list with the element of `lst` after the first `pos` elements of `lst`. If `lst` has fewer than `pos` elements, then a run-time exception is thrown.

Example:
```scheme
(drop '(1 2 3) 1) ; '(2 3)
(drop '(1 2 3 4) 10) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: List

Number of arguments: 2

Argument types: List x Int
_____
### `memv v lst`
Description: Checks if `v` is in `lst` using `eqv?`.

Example:
```scheme
(memv 1 '(1 2 3 4 5)) ; '(1 2 3 4 5)
(memv 10 '(1 2 3 4 5)) ; #f
```

Return type: List or Boolean (#f)

Number of arguments: 2

Argument types: Any x List
_____
### `map proc lst`
Description: Applies procedure `proc` on each element of `lst`. The `proc` argument must accept the same number of arguments as the number of supplied `lst`s and all `lst`s must have the same number of elements. The result is a list containing each result of `proc` in order.

Example:
```scheme
(map (lambda (x) x) '(1 2 3 4)) ; '(1 2 3 4)
(map (lambda (x) '"COMPILERS ARE FUN") '(1)) ; '("COMPILERS ARE FUN")
```

Return type: List

Number of arguments: 2

Argument types: Procedure x List
_____
### `append lst1 lst2`
Description: Retuns a list of `lst2` appended to the end of `lst`.

Example:
```scheme
(append '(1 2 3) '(4 3 2)) ; '(1 2 3 4 3 2)
(append '('"Compilers are ") '('"life")) ; '('"Compilers are " '"life") 
```

Return type: List

Number of arguments: 2

Argument types: List x List
_____
### `foldl proc init lst`
Description: Applies `proc` to `lst` and combines the return values of `proc` into `init`, traversed left to right.

Example:
```scheme
(foldl cons '() '(1 2 3 4)) ; '(4 3 2 1)
```

Return type: Any

Number of arguments: 3

Argument types: Procedre x Any x List
_____
### `foldr proc init lst`
Description: Applies `proc` to `lst` and combines the return values of `proc` into `init`, traversed right to left.

Example:
```scheme
(foldr cons '() '(1 2 3 4)) ; '(1 2 3 4)
```

Return type: Any

Number of arguments: 3

Argument types: Procedre x Any x List
_____
### `list? v`
Description: Similar to `cons?`. Checks if `v` is a list. Returns `#t` if it is, otherwise `#f`.

Example:
```scheme

(list? '1) ; #f
(list? '(1)); #t
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `void? v`
Description: Checks if `v` is a `void`. Returns `#t` if it is, otherwise `#f`.

Example:
```scheme

(void? (void)) ; #t
(void? 'v') ; #f
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `promise? v`
Description: Checks if `v` is a `promise`. Returns `#t` if it is, otherwise `#f`.

Example:
```scheme
(promise? (delay '1)) ; #t
(promise? '1) ; #f
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `number? v`
Description: Checks if `v` is a `number`. Returns `#t` if it is, otherwise `#f`.

Example:
```scheme
(number? 1) ; #t
(number? 'a) ; #f
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `integer? v`
Description: Checks if `v` is an `integer`. Returns `#t` if it is, otherwise `#f`.

Example:
```scheme
(integer? 1) ; #t
(integer? 'a) ; #f
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____
### `void`
Description: Returns the constant `#<void>` with no useful result.

Return type: Void

Number of arguments: 0
_____
### `print v`
Description: Prints the value `v` to the console.

Example:
```scheme
(print 1) ; 1
(print '"Hello, world!") ; "Hello, world!"
```

Return type: Void

Number of arguments: 1

Argument types: Any
_____
### `exit v`
Description: Passes `v` to the current exit handler.

Return type: Void

Number of arguments: 1

Argument types: Any
_____
### `halt v`
Description: Halts the current execution and prints `v` to the console.

Example:
```scheme
(halt 'done) ; 'done
```

Return type: Void

Number of arguments: 1

Argument types: Any
_____
### `eq? v1 v2`
Description: Checks if `v1` and `v2` refer to the same object. If they do, then this returns `#t`. Otherwise, this returns `#f`.

Example:
```scheme
(eq? '1 '2) ; #f
(eq? '1 '1) ; #t
```

Return type: Boolean (#t / #f)

Number of arguments: 2

Argument types: Any
_____
### `eqv? v1 v2`
Description: Checks if `v1` and `v2` are `eq?` for a particular datatype. If they do, then this returns `#t`. Otherwise, this returns `#f`.

Example:
```scheme
(eqv? '1 '2) ; #f
(eqv? '1 '1) ; #t
```

Return type: Boolean (#t / #f)

Number of arguments: 2

Argument types: Any
_____
### `not v1`
Description: Logical negation of `v1`.

Example:
```scheme
(not 1)  ; #f
(not #f) ; #t
```

Return type: Boolean (#t / #f)

Number of arguments: 1

Argument types: Any
_____

### `apply proc lst`
Description: Applies a procedure in `proc` to an argument list `lst`. `proc` is supported by all prims listed in the documentation, as well.

Example:
```scheme
(apply + '(1 2 3)) ; 5
```

Return type: Any

Number of arguments: 2

Argument types: Procedure x List
____
 

### If any of the above documentation is unclear, please visit the Racket [documentation](https://docs.racket-lang.org/) for more info.
