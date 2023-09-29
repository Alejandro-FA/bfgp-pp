
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-5-0)
    (:domain BLOCKS)

    (:objects
        a b c d e - object
    )

    (:init
        (clear d)
        (clear b)
        (ontable b)
        (ontable a)
        (on c a)
        (on d c)
        (holding e)
    )

    (:goal
        (and (clear e) (clear d) (clear b) (ontable e) (ontable b) (ontable a) (on c a) (on d c) (handempty ))
    )

    
    
    
)
