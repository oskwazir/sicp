#lang racket

(require (planet dyoo/simply-scheme))

(define (subsent sentence position)
  (if (= position 0)
      sentence
  (subsent (bf sentence) (- position 1))))