
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
        (clear e)
        (clear b)
        (clear f)
        (ontable e)
        (ontable b)
        (ontable f)
        (ontable c)
        (on d a)
        (on a c)
        (handempty )
    )

    (:goal
        (and (clear a) (clear b) (clear e) (clear f) (ontable e) (ontable b) (ontable f) (ontable c) (on a c) (holding d))
    )

    
    
    
)

