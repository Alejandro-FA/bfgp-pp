
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
        (clear d)
        (clear a)
        (clear h)
        (clear i)
        (clear g)
        (clear l)
        (ontable a)
        (ontable c)
        (ontable h)
        (ontable f)
        (ontable g)
        (ontable k)
        (on i c)
        (on j e)
        (on d j)
        (on e k)
        (on l f)
        (holding b)
    )

    (:goal
        (and (clear d) (clear b) (clear a) (clear h) (clear i) (clear g) (clear l) (ontable b) (ontable a) (ontable h) (ontable c) (ontable f) (ontable g) (ontable k) (on i c) (on j e) (on d j) (on e k) (on l f) (handempty ))
    )

    
    
    
)

