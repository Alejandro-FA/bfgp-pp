
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
        (clear g)
        (ontable a)
        (ontable e)
        (on b c)
        (on c f)
        (on d b)
        (on g d)
        (on f e)
        (handempty )
    )

    (:goal
        (and (clear g) (ontable e) (on b c) (on c f) (on d b) (on g d) (on f e) (holding a))
    )

    
    
    
)

