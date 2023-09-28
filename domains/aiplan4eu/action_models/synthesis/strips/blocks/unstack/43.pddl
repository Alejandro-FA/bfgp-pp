
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
        (clear d)
        (clear b)
        (clear c)
        (clear e)
        (clear f)
        (ontable d)
        (ontable a)
        (ontable c)
        (ontable e)
        (ontable f)
        (on b a)
        (handempty )
    )

    (:goal
        (and (clear d) (clear a) (clear c) (clear e) (clear f) (ontable d) (ontable a) (ontable c) (ontable e) (ontable f) (holding b))
    )

    
    
    
)

