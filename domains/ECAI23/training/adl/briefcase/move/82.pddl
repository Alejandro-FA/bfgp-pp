
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem briefcase-o3)
    (:domain briefcase)

    (:objects
        l0 l1 l2 l3 - location
        o0 o1 o2 - portable
    )

    (:init
        (at o1 l1)
        (at o0 l2)
        (at o2 l1)
        (is-at l1)
        (in o1)
    )

    (:goal
        (and (at o1 l3) (at o0 l2) (at o2 l1) (is-at l3) (in o1))
    )

    
    
    
)

