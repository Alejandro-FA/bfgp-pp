
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
        (ontable f)
        (ontable j)
        (ontable c)
        (on e b)
        (on h a)
        (on b d)
        (on a g)
        (on l f)
        (on g k)
        (on i c)
        (on k e)
        (on d i)
        (handempty )
    )

    (:goal
        (and (clear h) (clear f) (clear j) (ontable f) (ontable j) (ontable c) (on e b) (on h a) (on b d) (on a g) (on g k) (on i c) (on k e) (on d i) (holding l))
    )

    
    
    
)
