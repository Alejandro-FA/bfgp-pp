
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
        (ontable a)
        (ontable b)
        (ontable e)
        (ontable f)
        (on d e)
        (holding c)
    )

    (:goal
        (and (clear a) (clear c) (clear d) (clear f) (ontable a) (ontable e) (ontable b) (ontable f) (on c b) (on d e) (handempty ))
    )

    
    
    
)

