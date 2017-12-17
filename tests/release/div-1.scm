(define (decrement x)
  (print (/ -1 x))
  (if (= x 0)
      0
      (decrement (- x 1)))
  )

(decrement 10)
