
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
        (clear g)
        (clear l)
        (clear m)
        (ontable k)
        (ontable e)
        (ontable f)
        (on b k)
        (on g i)
        (on j b)
        (on l j)
        (on m h)
        (on i c)
        (on h e)
        (on c d)
        (on d f)
        (holding a)
    )

    (:goal
        (and (clear l) (clear g) (clear a) (clear m) (ontable k) (ontable e) (ontable f) (ontable a) (on b k) (on g i) (on j b) (on l j) (on m h) (on i c) (on h e) (on c d) (on d f) (handempty ))
    )

    
    
    
)
