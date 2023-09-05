
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
        (clear c)
        (clear d)
        (ontable a)
        (ontable b)
        (ontable f)
        (ontable c)
        (on d f)
        (holding e)
    )

    (:goal
        (and (clear b) (clear c) (clear d) (clear e) (ontable a) (ontable b) (ontable f) (ontable c) (on e a) (on d f) (handempty ))
    )

    
    
    
)
