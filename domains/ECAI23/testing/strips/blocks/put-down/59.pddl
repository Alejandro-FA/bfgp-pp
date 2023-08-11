
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
        (clear g)
        (clear h)
        (clear j)
        (ontable a)
        (ontable f)
        (ontable j)
        (ontable c)
        (on h f)
        (on e b)
        (on b d)
        (on i c)
        (on g k)
        (on k e)
        (on d i)
        (holding l)
    )

    (:goal
        (and (clear a) (clear l) (clear g) (clear h) (clear j) (ontable a) (ontable c) (ontable l) (ontable f) (ontable j) (on h f) (on e b) (on b d) (on g k) (on i c) (on k e) (on d i) (handempty ))
    )

    
    
    
)

