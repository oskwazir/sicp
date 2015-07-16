#lang racket

(require (planet dyoo/simply-scheme))

(define (subsent sentence position)
  (if (= position 0)
      sentence
  (subsent (bf sentence) (- position 1))))

(subsent '(6 4 2 7 5 8) 3)

;alternatively use Racket's list-tail
(list-tail '(6 4 2 7 5 8) 3)