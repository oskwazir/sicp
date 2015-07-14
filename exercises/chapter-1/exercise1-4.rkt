#lang racket
#|
Observe that our model of evaluation allows for combinations whose operators are compound expressions.
Use this observation to describe the behavior of the following procedure:
|#
(define (a-plus-abs-b a b)
  ((if (> b 0) + *) a b))
; a-plus-abs-b takes two parameters, a and b
; if b is greater than 0 (+ a b) is returned, otherwise (- a b) is returned
; basically the operator is decided which is cray-cray