
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
        (ontable i)
        (ontable e)
        (ontable f)
        (on b g)
        (on c f)
        (on h a)
        (on a d)
        (on g h)
        (on d i)
        (holding j)
    )

    (:goal
        (and (clear b) (clear j) (clear c) (ontable e) (ontable i) (ontable f) (on b g) (on c f) (on h a) (on a d) (on g h) (on d i) (on j e) (handempty ))
    )

    
    
    
)
