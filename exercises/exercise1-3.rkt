#lang racket
#| Define a procedure that takes three numbers as arguments
and returns the sum of the squares of the two larger numbers. |#
(define (square x)(* x x))
(define (squared-sum a b)(+ (square a) (square b)))
(define (largest-of-three x y z)(
    cond ((< x y z) (squared-sum y z))
         ((< y x z)(squared-sum x z))
         (else (squared-sum x y)) ))