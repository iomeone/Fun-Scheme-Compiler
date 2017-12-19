#lang racket
(require "top-level.rkt")
(require "desugar.rkt")
(require "cps.rkt")
(require "closure-convert.rkt")
(require "utils.rkt")



(eval-llvm (proc->llvm (closure-convert (cps-convert (anf-convert (alphatize (assignment-convert '(prim set-add (prim set) '1))))))))


