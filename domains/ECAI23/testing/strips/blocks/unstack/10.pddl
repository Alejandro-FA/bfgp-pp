
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
        (clear f)
        (clear j)
        (ontable i)
        (ontable e)
        (ontable f)
        (ontable c)
        (on h a)
        (on b g)
        (on a d)
        (on g h)
        (on d i)
        (on j e)
        (handempty )
    )

    (:goal
        (and (clear c) (clear g) (clear f) (clear j) (ontable e) (ontable i) (ontable f) (ontable c) (on h a) (on a d) (on g h) (on d i) (on j e) (holding b))
    )

    
    
    
)

