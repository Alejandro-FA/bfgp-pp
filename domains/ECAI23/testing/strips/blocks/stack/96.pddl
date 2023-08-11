
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
        (clear c)
        (clear f)
        (clear i)
        (clear m)
        (ontable b)
        (ontable k)
        (ontable g)
        (ontable f)
        (ontable m)
        (on c j)
        (on j a)
        (on e h)
        (on h l)
        (on l k)
        (on a e)
        (on i g)
        (holding d)
    )

    (:goal
        (and (clear b) (clear c) (clear d) (clear i) (clear m) (ontable b) (ontable k) (ontable g) (ontable f) (ontable m) (on c j) (on j a) (on e h) (on h l) (on i g) (on a e) (on d f) (on l k) (handempty ))
    )

    
    
    
)

