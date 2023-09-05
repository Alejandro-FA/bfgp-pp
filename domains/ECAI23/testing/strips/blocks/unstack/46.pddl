
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
        (clear e)
        (clear b)
        (clear j)
        (ontable d)
        (ontable i)
        (ontable c)
        (on f i)
        (on k a)
        (on e g)
        (on h k)
        (on j d)
        (on g c)
        (on b h)
        (on a f)
        (handempty )
    )

    (:goal
        (and (clear h) (clear e) (clear j) (ontable d) (ontable i) (ontable c) (on f i) (on k a) (on e g) (on h k) (on j d) (on g c) (on a f) (holding b))
    )

    
    
    
)
