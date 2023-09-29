
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
        (clear h)
        (clear c)
        (clear g)
        (ontable b)
        (ontable h)
        (ontable c)
        (ontable e)
        (ontable f)
        (on g e)
        (on d f)
        (holding a)
    )

    (:goal
        (and (clear d) (clear b) (clear a) (clear c) (clear h) (clear g) (ontable b) (ontable a) (ontable c) (ontable h) (ontable e) (ontable f) (on g e) (on d f) (handempty ))
    )

    
    
    
)
