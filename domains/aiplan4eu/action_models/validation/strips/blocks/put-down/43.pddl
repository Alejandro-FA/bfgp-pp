
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
        (clear k)
        (clear a)
        (clear h)
        (ontable c)
        (ontable d)
        (ontable h)
        (on i f)
        (on e g)
        (on k i)
        (on f e)
        (on g c)
        (on a j)
        (on j d)
        (holding b)
    )

    (:goal
        (and (clear b) (clear k) (clear a) (clear h) (ontable d) (ontable b) (ontable h) (ontable c) (on i f) (on e g) (on k i) (on f e) (on g c) (on a j) (on j d) (handempty ))
    )

    
    
    
)
