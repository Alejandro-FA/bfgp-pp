
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
        (clear c)
        (ontable a)
        (ontable d)
        (handempty )
        (on b a)
        (on c b)
    )

    (:goal
        (and (clear c) (ontable a) (holding d) (on b a) (on c b))
    )

    
    
    
)

