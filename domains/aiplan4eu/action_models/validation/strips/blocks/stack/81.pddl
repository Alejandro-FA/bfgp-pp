
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
        (clear j)
        (clear i)
        (clear l)
        (ontable l)
        (ontable g)
        (ontable b)
        (on i c)
        (on j e)
        (on f a)
        (on k f)
        (on e k)
        (on h g)
        (on a h)
        (on c b)
        (holding d)
    )

    (:goal
        (and (clear i) (clear d) (clear l) (ontable l) (ontable g) (ontable b) (on i c) (on j e) (on f a) (on k f) (on d j) (on e k) (on h g) (on a h) (on c b) (handempty ))
    )

    
    
    
)

