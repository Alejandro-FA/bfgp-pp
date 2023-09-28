
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
        (at o3 l0)
        (at o1 l0)
        (is-at l0)
        (in o3)
    )

    (:goal
        (and (at o0 l2) (at o2 l4) (at o3 l0) (at o1 l0) (is-at l0) (in o1) (in o3))
    )

    
    
    
)

