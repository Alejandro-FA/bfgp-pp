
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem BLOCKS-10-0)
    (:domain BLOCKS)

    (:objects
        a b c d e f g h i j - object
    )

    (:init
        (clear j)
        (clear d)
        (clear e)
        (clear h)
        (ontable i)
        (ontable e)
        (ontable f)
        (ontable j)
        (on b a)
        (on g i)
        (on c f)
        (on d c)
        (on a g)
        (on h b)
        (handempty )
    )

    (:goal
        (and (clear d) (clear j) (clear h) (ontable i) (ontable f) (ontable j) (on b a) (on g i) (on c f) (on d c) (on a g) (on h b) (holding e))
    )

    
    
    
)
