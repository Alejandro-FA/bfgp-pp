
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
        (clear a)
        (clear l)
        (clear f)
        (clear j)
        (ontable l)
        (ontable f)
        (ontable j)
        (ontable c)
        (on e b)
        (on b d)
        (on a g)
        (on g k)
        (on i c)
        (on k e)
        (on d i)
        (holding h)
    )

    (:goal
        (and (clear a) (clear l) (clear f) (clear h) (ontable l) (ontable f) (ontable j) (ontable c) (on e b) (on h j) (on b d) (on a g) (on i c) (on g k) (on k e) (on d i) (handempty ))
    )

    
    
    
)

