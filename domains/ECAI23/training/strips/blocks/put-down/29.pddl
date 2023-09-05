
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-6-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f - object
    )

    (:init
        (clear a)
        (clear f)
        (ontable e)
        (ontable c)
        (on a c)
        (on d e)
        (on f d)
        (holding b)
    )

    (:goal
        (and (clear a) (clear b) (clear f) (ontable e) (ontable b) (ontable c) (on f d) (on d e) (on a c) (handempty ))
    )

    
    
    
)
