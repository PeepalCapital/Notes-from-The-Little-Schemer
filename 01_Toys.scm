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

; What is NULL?
; NULL? tests whether the given list is composed of zero S-expressions. NULL? can't be asked for an atom.

; What is EQ?
; EQ? tests whether two non numeric atoms are same or not.

;*****************************************************************************************************************************
; Some critical information for implementing the code in the 1st chapter in Dr Racket

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Any atom, list or any S-expression needs to quoted when passed as an argument to a procedure. For instance

(car (a b c d)) ; will give an error
(car '(a b c d)) ; is correct way to pass the list (a b c d) to the car procdeure
(car (quote(a b c d))) ; this is also a correct way. Note that even quote is put in brackets

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; Atom is not defined in Dr Racket. We have to write the definition ourselves. This is also provided in the typerwritter font
; in this chapter

(define atom?
    (lambda (x)
      (and (not (pair? x)) (not (null? x)))))

; the above code defined the procedure for atom? now we can test for an atom, example:
(atom? 'a)

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; The law of CONS states that CONS takes 2 arguments and that the second argument has to be a list. The result is a list.
; It is not necessary for CONS to take 2nd argument as a list. Explanation below. But the result is always a list.
; Remember the visual notation of a an empty CONS cell. CONS stands for Construct. It takes 2 values and if the end value is
; not empty and not itself produced by a CONS cell then the list produced has a special notation of a dot between the 1st
; and 2nd values. Examples below:

(cons 'a '(b c d)) ; produces (a b c d) as expected

(cons 'a 'b) ; produces (a . b) Note 'b is not a list, it is neither empty nor produced by a list.

; Thus, a value produced by CONS is not always a list. In general, the result of CONS is a PAIR.
; The more traditional name for the CONS? function is PAIR?
; Source: https://cs.brown.edu/courses/cs173/2008/Manual/guide/Pairs__Lists__and_Scheme_Syntax.html

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~
; True is outputted as #t (#f for false). Example
(null? '()) ; will give #t as output

(null? 'atom) ; will actually give #f and not No Answer as the text indicates. We indeed can ask NULL? of an atom.
; NULL? is #f for everything except an empty list
