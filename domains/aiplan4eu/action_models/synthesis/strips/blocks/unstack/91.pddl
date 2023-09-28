
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-8-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h - object
    )

    (:init
        (clear e)
        (clear d)
        (ontable b)
        (ontable f)
        (on a g)
        (on h c)
        (on d f)
        (on c a)
        (on e h)
        (on g b)
        (handempty )
    )

    (:goal
        (and (clear e) (clear f) (ontable b) (ontable f) (on a g) (on h c) (on c a) (on e h) (on g b) (holding d))
    )

    
    
    
)

