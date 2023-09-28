
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
        (at o0 l2)
        (at o1 l2)
        (at o2 l2)
        (is-at l2)
        (in o0)
        (in o2)
    )

    (:goal
        (and (at o1 l2) (at o0 l1) (at o2 l1) (is-at l1) (in o0) (in o2))
    )

    
    
    
)

