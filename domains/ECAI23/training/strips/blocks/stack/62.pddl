
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
        (clear g)
        (clear d)
        (clear f)
        (ontable a)
        (ontable b)
        (ontable d)
        (ontable g)
        (ontable e)
        (on f e)
        (holding c)
    )

    (:goal
        (and (clear a) (clear b) (clear c) (clear g) (clear d) (ontable a) (ontable b) (ontable d) (ontable g) (ontable e) (on f e) (on c f) (handempty ))
    )

    
    
    
)

