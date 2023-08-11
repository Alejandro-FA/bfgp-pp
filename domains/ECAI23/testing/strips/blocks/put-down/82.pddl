
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
        (clear f)
        (clear i)
        (clear m)
        (ontable k)
        (ontable g)
        (ontable f)
        (ontable i)
        (ontable m)
        (on d c)
        (on c j)
        (on j a)
        (on e h)
        (on h l)
        (on a e)
        (on l k)
        (holding b)
    )

    (:goal
        (and (clear b) (clear g) (clear d) (clear f) (clear i) (clear m) (ontable b) (ontable k) (ontable g) (ontable f) (ontable i) (ontable m) (on d c) (on c j) (on j a) (on e h) (on h l) (on a e) (on l k) (handempty ))
    )

    
    
    
)

