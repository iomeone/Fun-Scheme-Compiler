### `cons? <argument>`
Description: Checkls if the provided argument is a cons cell (list).
Example:
```scheme
(cons? '()) ; #t
(cons? 21)  ; #f
```

### `apply < proc > < arg list ... >`
Description: Applies a procedure in proc to an argument list.
Example:
```scheme
(apply + '(1 2 3)) ; 5
```

Return type: Datum (Int, Symbol, etc.)
Number of arguments: At least 2
Argument types: Atomic Expression x List ...
____
### 