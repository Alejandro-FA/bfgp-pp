
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
        (clear f)
        (ontable l)
        (ontable c)
        (on i c)
        (on a g)
        (on h a)
        (on k e)
        (on f h)
        (on b d)
        (on d i)
        (on g k)
        (on e b)
        (holding j)
    )

    (:goal
        (and (clear j) (clear f) (ontable l) (ontable c) (on i c) (on a g) (on k e) (on f h) (on j l) (on b d) (on d i) (on g k) (on e b) (on h a) (handempty ))
    )

    
    
    
)

