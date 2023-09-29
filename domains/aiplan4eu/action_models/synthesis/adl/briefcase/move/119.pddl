
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
        (at o0 l0)
        (at o2 l0)
        (at o1 l2)
        (at o3 l4)
        (is-at l0)
        (in o0)
        (in o2)
    )

    (:goal
        (and (at o2 l2) (at o0 l2) (at o1 l2) (at o3 l4) (is-at l2) (in o0) (in o2))
    )

    
    
    
)
