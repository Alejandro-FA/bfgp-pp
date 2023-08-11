
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
        (clear b)
        (clear k)
        (clear g)
        (clear h)
        (clear j)
        (ontable d)
        (ontable g)
        (ontable h)
        (ontable e)
        (ontable i)
        (on f i)
        (on k a)
        (on b c)
        (on c e)
        (on j d)
        (on a f)
        (handempty )
    )

    (:goal
        (and (clear b) (clear k) (clear g) (clear d) (clear h) (ontable d) (ontable g) (ontable h) (ontable e) (ontable i) (on f i) (on c e) (on b c) (on k a) (on a f) (holding j))
    )

    
    
    
)

