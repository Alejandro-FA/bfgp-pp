
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-8-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h - object
    )

    (:init
        (clear d)
        (clear b)
        (clear f)
        (clear h)
        (ontable d)
        (ontable e)
        (ontable h)
        (ontable c)
        (on f a)
        (on g e)
        (on a g)
        (on b c)
        (handempty )
    )

    (:goal
        (and (clear d) (clear b) (clear f) (ontable e) (ontable c) (ontable d) (on f a) (on g e) (on a g) (on b c) (holding h))
    )

    
    
    
)
