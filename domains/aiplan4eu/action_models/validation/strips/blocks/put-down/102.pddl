
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
        (clear d)
        (clear c)
        (ontable g)
        (ontable k)
        (ontable c)
        (on b k)
        (on f a)
        (on h e)
        (on e l)
        (on m h)
        (on d f)
        (on a m)
        (on l j)
        (on j b)
        (holding i)
    )

    (:goal
        (and (clear i) (clear g) (clear d) (clear c) (ontable i) (ontable g) (ontable k) (ontable c) (on b k) (on f a) (on h e) (on e l) (on m h) (on d f) (on a m) (on l j) (on j b) (handempty ))
    )

    
    
    
)

