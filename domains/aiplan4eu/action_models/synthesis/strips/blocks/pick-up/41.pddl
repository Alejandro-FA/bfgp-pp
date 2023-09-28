
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
        (clear b)
        (clear a)
        (clear c)
        (ontable d)
        (ontable b)
        (ontable c)
        (on a e)
        (on f d)
        (on e f)
        (handempty )
    )

    (:goal
        (and (clear a) (clear c) (ontable d) (ontable c) (on a e) (on f d) (on e f) (holding b))
    )

    
    
    
)

