
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem hanoi-6)
    (:domain hanoi)

    (:objects
        d1 d2 d3 d4 d5 d6 peg1 peg2 peg3 - object
    )

    (:init
        (smaller d3 d2)
        (smaller d5 d1)
        (smaller peg3 d4)
        (smaller d3 d1)
        (smaller d4 d2)
        (smaller d4 d1)
        (smaller peg2 d4)
        (smaller peg1 d4)
        (smaller d6 d4)
        (smaller d5 d3)
        (smaller d1 d1)
        (smaller d3 d3)
        (smaller d4 d3)
        (smaller peg3 d2)
        (smaller peg3 d5)
        (smaller peg1 d2)
        (smaller peg1 d5)
        (smaller d6 d2)
        (smaller d6 d5)
        (smaller peg2 d2)
        (smaller peg2 d5)
        (smaller peg3 d1)
        (smaller d5 d4)
        (smaller peg1 d6)
        (smaller peg1 d1)
        (smaller d6 d1)
        (smaller peg2 d1)
        (smaller d4 d4)
        (smaller peg3 d3)
        (smaller peg2 d3)
        (smaller peg3 d6)
        (smaller peg1 d3)
        (smaller d2 d2)
        (smaller d5 d2)
        (smaller d6 d3)
        (smaller d5 d5)
        (smaller d2 d1)
        (smaller peg2 d6)
        (clear d4)
        (clear peg1)
        (clear d1)
        (on d1 d2)
        (on d6 peg3)
        (on d4 d5)
        (on d5 peg2)
        (on d3 d6)
        (on d2 d3)
    )

    (:goal
        (and (smaller d3 d2) (smaller d5 d1) (smaller peg3 d4) (smaller d3 d1) (smaller d4 d2) (smaller d4 d1) (smaller peg2 d4) (smaller peg1 d4) (smaller d6 d4) (smaller d5 d3) (smaller d1 d1) (smaller d3 d3) (smaller d4 d3) (smaller peg3 d2) (smaller peg3 d5) (smaller peg1 d2) (smaller peg1 d5) (smaller d6 d2) (smaller d6 d5) (smaller peg2 d2) (smaller peg2 d5) (smaller peg3 d1) (smaller d5 d4) (smaller peg1 d1) (smaller d6 d1) (smaller peg2 d1) (smaller d4 d4) (smaller d2 d1) (smaller peg3 d3) (smaller peg2 d3) (smaller peg3 d6) (smaller peg1 d3) (smaller d2 d2) (smaller d5 d2) (smaller d6 d3) (smaller d5 d5) (smaller peg1 d6) (smaller peg2 d6) (clear d4) (clear d5) (clear d1) (on d1 d2) (on d6 peg3) (on d5 peg2) (on d3 d6) (on d4 peg1) (on d2 d3))
    )

    
    
    
)

