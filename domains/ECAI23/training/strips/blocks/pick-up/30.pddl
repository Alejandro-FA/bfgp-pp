
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
        (clear b)
        (clear d)
        (clear f)
        (ontable e)
        (ontable b)
        (ontable f)
        (ontable c)
        (on d e)
        (on a c)
        (handempty )
    )

    (:goal
        (and (clear a) (clear d) (clear b) (ontable e) (ontable b) (ontable c) (on d e) (on a c) (holding f))
    )

    
    
    
)

