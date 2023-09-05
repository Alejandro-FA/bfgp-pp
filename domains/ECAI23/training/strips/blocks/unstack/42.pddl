
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
        (clear a)
        (clear e)
        (clear b)
        (clear c)
        (ontable a)
        (ontable b)
        (ontable f)
        (ontable c)
        (on e d)
        (on d f)
        (handempty )
    )

    (:goal
        (and (clear a) (clear b) (clear c) (clear d) (ontable a) (ontable b) (ontable f) (ontable c) (on d f) (holding e))
    )

    
    
    
)
