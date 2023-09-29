
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
        (clear g)
        (clear m)
        (ontable g)
        (ontable f)
        (ontable k)
        (on i f)
        (on c j)
        (on d c)
        (on l k)
        (on m i)
        (on j a)
        (on e h)
        (on a e)
        (on h l)
        (holding b)
    )

    (:goal
        (and (clear g) (clear b) (clear m) (ontable g) (ontable f) (ontable k) (on i f) (on c j) (on d c) (on b d) (on l k) (on m i) (on j a) (on e h) (on a e) (on h l) (handempty ))
    )

    
    
    
)
