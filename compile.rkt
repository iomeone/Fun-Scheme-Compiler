#lang racket
(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")

(define few-args '((lambda (a b c) c) '1 '2))

(define many-args '(begin (define (x a b)
                             a
                             )
                           (x 4 1 2 3 4 5)
                           ))


(define not-used '(letrec ([a x][x 1]) (+ a a)))

(define str '(print (string #\A)))

(eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level '1))))))))))



; (eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level '1))))))))))