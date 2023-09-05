
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
        (clear b)
        (clear g)
        (clear j)
        (clear i)
        (clear m)
        (ontable b)
        (ontable k)
        (ontable g)
        (ontable f)
        (ontable m)
        (on j a)
        (on e h)
        (on h l)
        (on i c)
        (on a e)
        (on c d)
        (on d f)
        (on l k)
        (handempty )
    )

    (:goal
        (and (clear b) (clear j) (clear i) (clear m) (ontable b) (ontable k) (ontable f) (ontable m) (on j a) (on e h) (on h l) (on i c) (on a e) (on c d) (on d f) (on l k) (holding g))
    )

    
    
    
)
