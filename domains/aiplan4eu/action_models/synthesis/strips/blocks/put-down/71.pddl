
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
        (clear c)
        (ontable e)
        (ontable b)
        (ontable f)
        (on g e)
        (on a g)
        (on d f)
        (on c a)
        (holding h)
    )

    (:goal
        (and (clear d) (clear b) (clear h) (clear c) (ontable e) (ontable b) (ontable f) (ontable h) (on c a) (on g e) (on d f) (on a g) (handempty ))
    )

    
    
    
)

