
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
        (clear c)
        (clear g)
        (clear h)
        (clear e)
        (ontable a)
        (ontable e)
        (ontable f)
        (ontable c)
        (on h d)
        (on g f)
        (on d a)
        (holding b)
    )

    (:goal
        (and (clear b) (clear c) (clear g) (clear h) (clear e) (ontable a) (ontable b) (ontable c) (ontable e) (ontable f) (on h d) (on g f) (on d a) (handempty ))
    )

    
    
    
)

