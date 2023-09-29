
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
        (clear g)
        (clear a)
        (ontable e)
        (ontable a)
        (on d b)
        (on b c)
        (on f e)
        (on g d)
        (on c f)
        (handempty )
    )

    (:goal
        (and (clear g) (ontable e) (on d b) (on b c) (on f e) (on g d) (on c f) (holding a))
    )

    
    
    
)
