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
 