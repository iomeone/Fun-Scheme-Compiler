(define (waste time)
	(+ (waste 1) (waste 2))
)

(waste 3)
