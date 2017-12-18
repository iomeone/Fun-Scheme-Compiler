#lang racket
(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")

(define few-args '((lambda (a b c) c) '1 '2))

(define many-args '(prim null? '() '1))


(define not-used '(letrec ([a x][x 1]) (+ a a)))

(define str '(print (string #\A)))

(define mom-test '(prim print '"Hello"))

(eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert mom-test)))))))


