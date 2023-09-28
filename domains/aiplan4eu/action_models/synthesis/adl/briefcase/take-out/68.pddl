
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
        (at o3 l5)
        (at o0 l5)
        (at o1 l0)
        (at o2 l1)
        (at o4 l5)
        (is-at l5)
        (in o0)
    )

    (:goal
        (and (at o3 l5) (at o0 l5) (at o1 l0) (at o2 l1) (at o4 l5) (is-at l5))
    )

    
    
    
)

