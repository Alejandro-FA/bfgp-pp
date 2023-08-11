
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-14-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j k l m n - object
    )

    (:init
        (clear k)
        (clear g)
        (clear d)
        (clear i)
        (ontable a)
        (ontable e)
        (ontable n)
        (ontable f)
        (on l b)
        (on j f)
        (on h j)
        (on i n)
        (on k c)
        (on g a)
        (on d h)
        (on b e)
        (on c l)
        (holding m)
    )

    (:goal
        (and (clear k) (clear g) (clear d) (clear i) (clear m) (ontable a) (ontable e) (ontable n) (ontable f) (ontable m) (on l b) (on j f) (on h j) (on i n) (on k c) (on g a) (on d h) (on b e) (on c l) (handempty ))
    )

    
    
    
)

