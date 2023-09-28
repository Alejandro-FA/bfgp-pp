
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
        (clear d)
        (clear b)
        (clear m)
        (clear i)
        (clear f)
        (clear g)
        (ontable m)
        (ontable b)
        (ontable i)
        (ontable f)
        (ontable g)
        (ontable k)
        (on c j)
        (on d c)
        (on l k)
        (on j a)
        (on e h)
        (on a e)
        (on h l)
        (handempty )
    )

    (:goal
        (and (clear d) (clear b) (clear m) (clear f) (clear g) (ontable m) (ontable b) (ontable f) (ontable g) (ontable k) (on c j) (on d c) (on l k) (on j a) (on e h) (on a e) (on h l) (holding i))
    )

    
    
    
)

