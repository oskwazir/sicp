#lang racket

(require (planet dyoo/simply-scheme))

(define (vowel? x) (member x '(a e i o u)))

(define (has-vowels? wd shifted)
  (cond ((= shifted (count wd)) #f)
         ((vowel? (first wd)) #t)
         (else
          (has-vowels?
           (word (bf wd) (first wd)) (+ 1 shifted)))))
    
(define (pigl wd)
  ; If the input word has no vowels just return the word directly.
  (if (not (has-vowels? wd 0))
      (word wd)

  ;If the input word starts with a consonant then we move all the starting consonants to the end of the word and then append "ay" to the end.
      (cond ((not (vowel? (first wd))) (pigl (word (bf wd) (first wd))))
         ;If the input word starts with a vowel then we append "ay" to the input.
         (else (word wd 'ay)))))