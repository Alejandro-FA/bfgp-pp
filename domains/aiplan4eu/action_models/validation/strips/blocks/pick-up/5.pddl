
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
        (clear f)
        (ontable j)
        (ontable i)
        (ontable f)
        (on c j)
        (on d i)
        (on a d)
        (on g h)
        (on b g)
        (on e c)
        (on h a)
        (handempty )
    )

    (:goal
        (and (clear e) (clear b) (ontable j) (ontable i) (on c j) (on d i) (on a d) (on b g) (on g h) (on e c) (on h a) (holding f))
    )

    
    
    
)

