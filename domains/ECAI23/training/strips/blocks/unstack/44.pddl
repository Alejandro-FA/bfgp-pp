
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-6-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f - object
    )

    (:init
        (clear b)
        (clear c)
        (clear d)
        (clear e)
        (clear f)
        (ontable a)
        (ontable b)
        (ontable c)
        (ontable d)
        (ontable f)
        (on e a)
        (handempty )
    )

    (:goal
        (and (clear a) (clear b) (clear c) (clear d) (clear f) (ontable a) (ontable b) (ontable c) (ontable d) (ontable f) (holding e))
    )

    
    
    
)

