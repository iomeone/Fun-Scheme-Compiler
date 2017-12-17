#lang racket
(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")

(define few-args '((lambda (a b c d e) b) '1 '2 '3 '4))

(define many-args '(begin (define (x a b)
                             a
                             )
                           (x 4 1 2 3 4 5)
                           ))

(define div-by-zero '(begin (let ([x '1]) (/ x 0))))

(define non-function '(begin
                        (define (x a)
                          (a))
                        (x (lambda () 1))
                        ))

(define not-used '(letrec ([a x][x 1]) (+ a a)))

(define max-mem '(begin (define (factorial n)
 (cond ((< n 0) #f)
         ((<= n 1) 1)
         (else (* n (factorial (- n 1))))))
                        (factorial 11)
                  ))

;(define cc (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert few-args))))))
;(eval-llvm (proc->llvm cc))

;(define cc (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level div-by-zero)))))))))
;(eval-llvm (proc->llvm cc))



; (eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level '1))))))))))