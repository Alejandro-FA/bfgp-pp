
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-5-0)
    (:domain BLOCKS)

    (:objects
        a b c d e - object
    )

    (:init
        (clear b)
        (clear a)
        (clear c)
        (ontable d)
        (ontable e)
        (ontable c)
        (on a d)
        (on b e)
        (handempty )
    )

    (:goal
        (and (clear e) (clear a) (clear c) (ontable e) (ontable d) (ontable c) (on a d) (holding b))
    )

    
    
    
)

