#lang racket
#|
Newton's method for cube roots is based on the fact that if y is an approximation to the cube root of x,
then a better approximation is given by the value 
  x/y^2+ 2y / 3
|#
(define (square x)(* x x))
(define (cube-root x y)
  (/ (+ (/ x (square y)) (* 2 y)) 3))