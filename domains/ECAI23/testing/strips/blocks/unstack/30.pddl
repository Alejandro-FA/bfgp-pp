
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
        (clear g)
        (clear b)
        (clear j)
        (ontable d)
        (ontable e)
        (ontable i)
        (on f i)
        (on c e)
        (on k a)
        (on b c)
        (on g h)
        (on h k)
        (on j d)
        (on a f)
        (handempty )
    )

    (:goal
        (and (clear g) (clear j) (clear c) (ontable d) (ontable e) (ontable i) (on f i) (on a f) (on k a) (on c e) (on h k) (on j d) (on g h) (holding b))
    )

    
    
    
)

