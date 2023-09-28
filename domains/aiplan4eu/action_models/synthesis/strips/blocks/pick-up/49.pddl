
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
        (clear b)
        (clear f)
        (clear a)
        (clear c)
        (ontable e)
        (ontable d)
        (ontable f)
        (ontable a)
        (on g e)
        (on c d)
        (on b g)
        (handempty )
    )

    (:goal
        (and (clear b) (clear a) (clear c) (ontable d) (ontable e) (ontable a) (on g e) (on c d) (on b g) (holding f))
    )

    
    
    
)

