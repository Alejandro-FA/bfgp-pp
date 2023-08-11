
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-12-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j k l - object
    )

    (:init
        (clear l)
        (clear j)
        (clear h)
        (clear f)
        (ontable l)
        (ontable f)
        (ontable j)
        (ontable c)
        (on e b)
        (on h a)
        (on b d)
        (on a g)
        (on g k)
        (on i c)
        (on k e)
        (on d i)
        (handempty )
    )

    (:goal
        (and (clear a) (clear l) (clear f) (clear j) (ontable l) (ontable f) (ontable j) (ontable c) (on e b) (on b d) (on a g) (on g k) (on i c) (on k e) (on d i) (holding h))
    )

    
    
    
)

