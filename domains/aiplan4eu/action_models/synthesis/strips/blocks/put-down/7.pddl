
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-4-0)
    (:domain BLOCKS)

    (:objects
        a b c d - object
    )

    (:init
        (clear d)
        (clear b)
        (clear c)
        (ontable d)
        (ontable b)
        (ontable c)
        (holding a)
    )

    (:goal
        (and (clear d) (clear b) (clear a) (clear c) (ontable d) (ontable b) (ontable a) (ontable c) (handempty ))
    )

    
    
    
)

