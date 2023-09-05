
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
        (ontable g)
        (ontable e)
        (on f e)
        (on c f)
        (on a g)
        (on b c)
        (holding d)
    )

    (:goal
        (and (clear a) (clear d) (ontable g) (ontable e) (on b c) (on c f) (on d b) (on a g) (on f e) (handempty ))
    )

    
    
    
)
