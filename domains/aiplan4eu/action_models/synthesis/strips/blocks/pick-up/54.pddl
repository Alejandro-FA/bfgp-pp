
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
        (clear d)
        (clear b)
        (clear a)
        (clear c)
        (ontable e)
        (ontable g)
        (ontable d)
        (ontable b)
        (on a g)
        (on f e)
        (on c f)
        (handempty )
    )

    (:goal
        (and (clear d) (clear a) (clear c) (ontable d) (ontable g) (ontable e) (on a g) (on f e) (on c f) (holding b))
    )

    
    
    
)
