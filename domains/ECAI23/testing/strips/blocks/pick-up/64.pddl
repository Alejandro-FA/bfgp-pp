
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
        (clear l)
        (clear e)
        (clear j)
        (clear i)
        (ontable g)
        (ontable b)
        (ontable j)
        (ontable d)
        (on k f)
        (on e k)
        (on f a)
        (on l d)
        (on h g)
        (on a h)
        (on i c)
        (on c b)
        (handempty )
    )

    (:goal
        (and (clear l) (clear i) (clear e) (ontable g) (ontable b) (ontable d) (on k f) (on e k) (on f a) (on l d) (on h g) (on a h) (on i c) (on c b) (holding j))
    )

    
    
    
)

