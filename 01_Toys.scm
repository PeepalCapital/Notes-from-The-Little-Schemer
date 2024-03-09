#lang scheme
; (1. Toys)

; Reference to Common Lisp: A Gentle Introduction to Symbolic Computation by David S. Touretzky


; What is an Atom?
; The word “atom” comes from the Greek atornos, meaning indivisible.
; Numbers and symbols are atomic because they cannot be taken apart.
; For instance the ATOM predicate returns T if its input is anything other than a CONS cell.
; A predicate is a question which results in a True or a False. (In Scheme #t or #f and in Common Lisp T or NIL).
; tl;dr atom cannont be split further, it's the most fundamental basic unit.

; What is an S-expresion?
; It stands for Symbolic expression.
; It is a Data Structure.
; Atoms are a type of S-expressions thus numbers and symbols are S-expressions.
; A list of atoms or even S-expressions are also S-expressions.
; An S-expression is either an atom, or a CONS cell whose CAR and CDR parts are S-expressions.

; What is a CONS cell?
; The CONS function creates cons cells. It takes two inputs and returns a
; pointer to a new cons cell whose CAR points to the first input and whose
; CDR points to the second. The term “CONS” is short for CONStruct.
;
; A --------> |~~~~|
;             |CONS|-----> (A B C D)
; (B C D) --> |____|
;
;|~~|~~|----(B C D)   The HELLO atom is CONSed to a list (B C D) which itself can be represented by CONS cells.
;|__|__|              The new CONS pair is created above. The final pointer to CAR of new CONS is the result of CONS.
;  |
;  |
; HELLO


; What is CAR?
; First half of the CONS cell (the left half).  

; What is CDR?
; Second half of the CONS cell (the right half). Pronounced 'could-er'.
