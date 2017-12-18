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
Description: Returns the first element of a list.

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
Description: Returns all elements of a list except for the first.

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
Description: Returns the first element of a list.

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
Description: Returns the second element of a list.

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
Description: Returns the third element of a list.

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
Description: Returns the fourth element of a list.

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
Description: Returns the fifth element of a list.

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
(drop '(1 2 3) 1 ) ; '(2 3)
(drop '(1 2 3 4) 10) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: List

Number of arguments: 2

Argument types: List x Int
_____
### `member v lst`
Description: Checks if `v` is in `lst`.

Example:
```scheme
(drop '(1 2 3) 1 ) ; '(2 3)
(drop '(1 2 3 4) 10) ; library run-time error: Expected a cons value. (expect_cons)
```

Return type: List

Number of arguments: 2

Argument types: List x Int
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
### `apply proc lst`
Description: Applies a procedure in proc to an argument list.

Example:
```scheme
(apply + '(1 2 3)) ; 5
```

Return type: Datum (Int, Symbol, etc.)

Number of arguments: 2

Argument types: Atomic Expression x List
____
 