
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
        (clear a)
        (clear c)
        (ontable e)
        (ontable f)
        (ontable c)
        (on d h)
        (on g e)
        (on a g)
        (on h f)
        (holding b)
    )

    (:goal
        (and (clear d) (clear b) (clear a) (clear c) (ontable e) (ontable b) (ontable f) (ontable c) (on g e) (on h f) (on a g) (on d h) (handempty ))
    )

    
    
    
)

