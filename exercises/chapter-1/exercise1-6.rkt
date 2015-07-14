#lang racket
#|
What happens when this version of new-if is used to calculate square roots?

(define (new-if predicate then-clause else-clause)
  (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
  (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))
|#

#|
So if you run new-if for sqrt-iter the program runs endlessely into a memory error.
I didn't understand why and I read online to understand what was going on http://community.schemewiki.org/?sicp-ex-1.6.
new-if is a procedure and it's "clauses" are evaluated before new-if is applied. Meaning the code
for sqrt-iter executes again and again until everything craps out. CRAZY!
|#

(define (square x)(* x x))
(define (sqrt x)
  (sqrt-iter 1.0 x))

(define (good-enough guess x)
  (< (abs (- (square guess) x)) 0.001))

(define (average x y)
  (/ (+ x y) 2))

(define (improve guess x)
  (average guess (/ x guess)))

(define (sqrt-iter guess x)
  (if (good-enough guess x)
      guess
      (sqrt-iter (improve guess x)
                 x)))