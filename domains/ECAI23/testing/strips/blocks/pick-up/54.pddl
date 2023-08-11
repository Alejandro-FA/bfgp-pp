
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
        (clear b)
        (clear l)
        (clear g)
        (clear h)
        (clear f)
        (clear i)
        (ontable a)
        (ontable b)
        (ontable c)
        (ontable k)
        (ontable g)
        (ontable h)
        (ontable f)
        (on e k)
        (on l d)
        (on i c)
        (on j e)
        (on d j)
        (handempty )
    )

    (:goal
        (and (clear a) (clear l) (clear g) (clear h) (clear f) (clear i) (ontable a) (ontable c) (ontable k) (ontable g) (ontable h) (ontable f) (on e k) (on l d) (on i c) (on j e) (on d j) (holding b))
    )

    
    
    
)

