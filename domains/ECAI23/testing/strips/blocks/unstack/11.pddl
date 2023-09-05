
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-10-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j - object
    )

    (:init
        (clear b)
        (clear c)
        (clear g)
        (clear f)
        (clear j)
        (ontable b)
        (ontable c)
        (ontable e)
        (ontable f)
        (ontable i)
        (on h a)
        (on a d)
        (on g h)
        (on d i)
        (on j e)
        (handempty )
    )

    (:goal
        (and (clear b) (clear c) (clear g) (clear e) (clear f) (ontable b) (ontable c) (ontable e) (ontable f) (ontable i) (on h a) (on a d) (on g h) (on d i) (holding j))
    )

    
    
    
)
