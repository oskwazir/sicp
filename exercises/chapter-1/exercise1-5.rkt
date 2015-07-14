#lang racket
#|
Ben Bitdiddle has invented a test to determine whether the interpreter 
he is faced with is using applicative-order evaluation or normal-order evaluation. 
He defines the following two procedures:

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))

(test 0 (p))


What behavior will Ben observe with an interpreter that uses applicative-order evaluation? 
What behavior will he observe with an interpreter that uses normal-order evaluation? 
|#

;With applicative-order evaluation the function or procedure 'p' will result in an endless loop when it's 
;evaluated in the else clause of the if statement.

;With  normal-order evaluation the if statement will halt before reaching the else statement.

(define (p) (p))

(define (test x y)
  (if (= x 0)
      0
      y))