
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-13-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j k l m - object
    )

    (:init
        (clear m)
        (clear g)
        (clear l)
        (clear k)
        (ontable b)
        (ontable e)
        (ontable f)
        (ontable k)
        (on i c)
        (on h e)
        (on c d)
        (on m h)
        (on d f)
        (on g i)
        (on l j)
        (on j b)
        (holding a)
    )

    (:goal
        (and (clear a) (clear g) (clear l) (clear k) (ontable e) (ontable b) (ontable f) (ontable k) (on i c) (on h e) (on m h) (on j b) (on d f) (on a m) (on g i) (on l j) (on c d) (handempty ))
    )

    
    
    
)
