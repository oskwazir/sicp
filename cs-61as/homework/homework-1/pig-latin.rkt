#lang racket

(require (planet dyoo/simply-scheme))

(define (vowel? x) (member x '(a e i o u)))

(define (has-vowels? wd)
  (define (iterate-over-letters wd shifted)
     (cond ((= shifted (count wd)) #f)
         ((vowel? (first wd)) #t)
         (else
          (iterate-over-letters
           (word (bf wd) (first wd)) (+ 1 shifted)))))
  (iterate-over-letters wd 0))
    
(define (pigl wd)
  ; If the input word has no vowels just return the word directly.
  (if (not (has-vowels? wd))
      (word wd)

  ;If the input word starts with a consonant then we move all the starting consonants to the end of the word and then append "ay" to the end.
      (cond ((not (vowel? (first wd))) (pigl (word (bf wd) (first wd))))
         ;If the input word starts with a vowel then we append "ay" to the input.
         (else (word wd 'ay)))))

(pigl 'scheme)
(pigl 'hello)
(pigl 'my)
(pigl 'apple)
(pigl 'colorado)