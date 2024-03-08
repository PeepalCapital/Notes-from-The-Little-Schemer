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

; What is CAR?

; What is CDR?