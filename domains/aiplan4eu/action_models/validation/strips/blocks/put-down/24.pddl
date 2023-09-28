
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
        (clear j)
        (clear c)
        (ontable d)
        (ontable i)
        (on k a)
        (on f i)
        (on b g)
        (on g h)
        (on j d)
        (on h k)
        (on c b)
        (on a f)
        (holding e)
    )

    (:goal
        (and (clear j) (clear e) (clear c) (ontable e) (ontable i) (ontable d) (on k a) (on f i) (on g h) (on b g) (on j d) (on h k) (on c b) (on a f) (handempty ))
    )

    
    
    
)

