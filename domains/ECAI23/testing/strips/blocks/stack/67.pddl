
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
        (clear b)
        (clear h)
        (clear f)
        (clear i)
        (ontable c)
        (ontable k)
        (ontable g)
        (ontable f)
        (on e k)
        (on l d)
        (on b l)
        (on h g)
        (on i c)
        (on j e)
        (on d j)
        (holding a)
    )

    (:goal
        (and (clear a) (clear b) (clear f) (clear i) (ontable k) (ontable g) (ontable f) (ontable c) (on e k) (on l d) (on b l) (on h g) (on a h) (on i c) (on j e) (on d j) (handempty ))
    )

    
    
    
)
