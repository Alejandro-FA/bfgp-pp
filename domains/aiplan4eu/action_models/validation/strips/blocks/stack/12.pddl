
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
        (clear f)
        (ontable i)
        (ontable f)
        (on d i)
        (on a d)
        (on b g)
        (on g h)
        (on e j)
        (on j b)
        (on h a)
        (holding c)
    )

    (:goal
        (and (clear e) (clear c) (ontable i) (ontable f) (on d i) (on a d) (on g h) (on b g) (on e j) (on j b) (on h a) (on c f) (handempty ))
    )

    
    
    
)

