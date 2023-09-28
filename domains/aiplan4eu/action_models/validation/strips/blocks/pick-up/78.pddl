
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
        (clear c)
        (clear g)
        (ontable d)
        (ontable b)
        (ontable f)
        (ontable g)
        (ontable k)
        (on i f)
        (on c j)
        (on l k)
        (on m i)
        (on j a)
        (on e h)
        (on a e)
        (on h l)
        (handempty )
    )

    (:goal
        (and (clear d) (clear b) (clear m) (clear c) (ontable d) (ontable b) (ontable f) (ontable k) (on i f) (on c j) (on l k) (on m i) (on j a) (on e h) (on a e) (on h l) (holding g))
    )

    
    
    
)

