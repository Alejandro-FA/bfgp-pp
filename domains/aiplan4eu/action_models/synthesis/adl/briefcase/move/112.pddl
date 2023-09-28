
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem briefcase-o4)
    (:domain briefcase)

    (:objects
        l0 l1 l2 l3 l4 - location
        o0 o1 o2 o3 - portable
    )

    (:init
        (at o0 l2)
        (at o2 l4)
        (at o3 l4)
        (at o1 l4)
        (is-at l4)
        (in o1)
    )

    (:goal
        (and (at o2 l4) (at o1 l1) (at o0 l2) (at o3 l4) (is-at l1) (in o1))
    )

    
    
    
)

