
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-7-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g - object
    )

    (:init
        (clear a)
        (clear b)
        (clear d)
        (clear e)
        (ontable d)
        (ontable g)
        (ontable e)
        (ontable b)
        (on a f)
        (on f g)
        (holding c)
    )

    (:goal
        (and (clear a) (clear b) (clear c) (clear d) (clear e) (ontable b) (ontable c) (ontable d) (ontable g) (ontable e) (on a f) (on f g) (handempty ))
    )

    
    
    
)

