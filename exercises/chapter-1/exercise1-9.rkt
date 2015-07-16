#lang racket
#|
 Original example from book uses inc and dec procedures,which I guess are equivalent to add1 and sub1 in Racket.

 Anyway we've redefined + to be a procedure that is recursive, it has to build out a series of results from the recursive
 call because the recursive call is nested inside another expression.
|#

(define (+ a b)
  (if (= a 0)
         b
      (add1 (+ (sub1 a) b))))
#|
 (+ 4 5)
 (add1 (+ (sub 4) 5))
 (add1 (+ 3 5))
 (add1 (add1 (+ (sub1 3) 5)))
 (add1 (add1 (+ 2 5)))
 (add1 (add1 (add1 (+ (sub1 2) 5))))
 (add1 (add1 (add1 (+ 1 5))))
 (add1 (add1 (add1 (add1 (+ (sub1 1) 5)))))
 (add1 (add1 (add1 (add1 (+ 0 5)))))
 (add1 (add1 (add1 (add1 5))))
 (add1 (add1 (add1 6)))
 (add1 (add1 7))
 (add1 8)
 9
|#

#|
 This is iterative, because even though it's a recursive call the recursive call is not nested inside another expression, so the expression doesn't expand like the one above
|#
(define (+ a b)
  (if (= a 0)
      b
      (+ (sub1 a) (add1 b))))
#|
(+ 4 5)
(+ (sub1 4) (add1 5))
(+ 3 6)
(+ (sub1 3) (add1 6))
(+ 2 7)
(+ (sub1 2) (add1 7))
(+ 1 8)
(+ (sub1 1) (add1 8))
(+ 0 9)
9
|#