
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
        (clear d)
        (clear f)
        (ontable b)
        (ontable c)
        (on f e)
        (on d a)
        (on a c)
        (on e b)
        (handempty )
    )

    (:goal
        (and (clear d) (clear e) (ontable b) (ontable c) (on d a) (on a c) (on e b) (holding f))
    )

    
    
    
)

