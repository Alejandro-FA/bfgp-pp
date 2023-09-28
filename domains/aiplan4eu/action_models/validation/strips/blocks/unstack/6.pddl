
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
        (clear e)
        (clear b)
        (clear c)
        (ontable j)
        (ontable i)
        (ontable f)
        (on c j)
        (on d i)
        (on a d)
        (on g h)
        (on b g)
        (on h a)
        (on e f)
        (handempty )
    )

    (:goal
        (and (clear b) (clear f) (clear c) (ontable j) (ontable i) (ontable f) (on c j) (on d i) (on a d) (on b g) (on g h) (on h a) (holding e))
    )

    
    
    
)

