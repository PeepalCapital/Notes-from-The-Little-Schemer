#lang scheme
; (2. Do it, do it again, and again, and again...)

; Define atom first like in the previous chapter
(define atom
  (lambda (x)
    (and (not (pair? x)) (not (null? x)))))

; lat stands for a list of atoms