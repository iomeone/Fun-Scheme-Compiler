(define x (lambda t (apply + t)))
(define y (x 1 2 3))
(y)
