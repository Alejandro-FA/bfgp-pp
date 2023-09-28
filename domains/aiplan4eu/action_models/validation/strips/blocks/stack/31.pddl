
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-11-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j k - object
    )

    (:init
        (clear d)
        (clear b)
        (clear c)
        (clear e)
        (ontable d)
        (ontable b)
        (ontable c)
        (ontable i)
        (on k a)
        (on e g)
        (on f i)
        (on g h)
        (on h k)
        (on a f)
        (holding j)
    )

    (:goal
        (and (clear d) (clear c) (clear j) (clear e) (ontable i) (ontable d) (ontable b) (ontable c) (on k a) (on e g) (on f i) (on j b) (on g h) (on h k) (on a f) (handempty ))
    )

    
    
    
)

