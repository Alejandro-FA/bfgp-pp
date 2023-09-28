
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
        (clear a)
        (clear h)
        (clear f)
        (clear g)
        (clear k)
        (ontable a)
        (ontable c)
        (ontable f)
        (ontable g)
        (ontable l)
        (on i c)
        (on h j)
        (on k e)
        (on j l)
        (on b d)
        (on d i)
        (on e b)
        (handempty )
    )

    (:goal
        (and (clear a) (clear h) (clear g) (clear k) (ontable a) (ontable c) (ontable g) (ontable l) (on i c) (on k e) (on h j) (on j l) (on b d) (on d i) (on e b) (holding f))
    )

    
    
    
)

