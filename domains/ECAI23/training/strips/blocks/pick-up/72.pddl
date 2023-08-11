
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
        (clear a)
        (clear c)
        (clear d)
        (clear g)
        (clear h)
        (clear e)
        (ontable a)
        (ontable b)
        (ontable c)
        (ontable h)
        (ontable e)
        (ontable f)
        (on g b)
        (on d f)
        (handempty )
    )

    (:goal
        (and (clear c) (clear d) (clear g) (clear h) (clear e) (ontable b) (ontable c) (ontable h) (ontable e) (ontable f) (on g b) (on d f) (holding a))
    )

    
    
    
)

