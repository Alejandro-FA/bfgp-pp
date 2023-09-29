
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem briefcase-o5)
    (:domain briefcase)

    (:objects
        l0 l1 l2 l3 l4 l5 - location
        o0 o1 o2 o3 o4 - portable
    )

    (:init
        (at o3 l0)
        (at o1 l0)
        (at o2 l3)
        (at o4 l5)
        (at o0 l2)
        (is-at l0)
        (in o1)
    )

    (:goal
        (and (at o3 l0) (at o1 l0) (at o2 l3) (at o4 l5) (at o0 l2) (is-at l0) (in o1) (in o3))
    )

    
    
    
)
