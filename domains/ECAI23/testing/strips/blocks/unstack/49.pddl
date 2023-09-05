
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
        (clear a)
        (clear b)
        (clear k)
        (clear h)
        (clear e)
        (clear j)
        (ontable b)
        (ontable c)
        (ontable k)
        (ontable d)
        (ontable h)
        (ontable i)
        (on f i)
        (on e g)
        (on j d)
        (on g c)
        (on a f)
        (handempty )
    )

    (:goal
        (and (clear b) (clear k) (clear h) (clear e) (clear f) (clear j) (ontable b) (ontable c) (ontable k) (ontable d) (ontable h) (ontable i) (on f i) (on e g) (on j d) (on g c) (holding a))
    )

    
    
    
)
