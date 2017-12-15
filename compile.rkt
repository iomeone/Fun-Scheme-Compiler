#lang racket
(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")

(define test-code '(begin (let ([a "mike"]) (print a))))

;(eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert (simplify-ir (desugar (top-level test-code))))))))))