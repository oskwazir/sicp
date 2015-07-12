#lang racket
; SICP ex1.2
; translate 5 + 4 + (2 - (3 - (6 + 4/5))) / 3(6-2)(2-7)
;Not entirely sure the best way to format multiple nested expressions
(/
 (+ 5 4
    (- 2
       (- 3
          (+ 6
             (/ 4 5)))))
 (* 3
    (- 6 2)
    (- 2 7)))
 