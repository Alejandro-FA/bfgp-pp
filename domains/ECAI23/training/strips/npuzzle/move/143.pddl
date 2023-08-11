
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem n-puzzle-bootstrap-3x3-05)
    (:domain n-puzzle-typed)

    (:objects
        p_1_1 p_1_2 p_1_3 p_2_1 p_2_2 p_2_3 p_3_1 p_3_2 p_3_3 - position
        t_1 t_2 t_3 t_4 t_5 t_6 t_7 t_8 - tile
    )

    (:init
        (at t_2 p_1_2)
        (at t_1 p_2_2)
        (at t_5 p_2_3)
        (at t_8 p_3_1)
        (at t_3 p_1_3)
        (at t_7 p_3_2)
        (at t_4 p_1_1)
        (at t_6 p_3_3)
        (empty p_2_1)
        (neighbor p_1_1 p_2_1)
        (neighbor p_3_3 p_2_3)
        (neighbor p_1_2 p_1_3)
        (neighbor p_2_2 p_1_2)
        (neighbor p_2_1 p_2_2)
        (neighbor p_2_1 p_3_1)
        (neighbor p_2_3 p_1_3)
        (neighbor p_2_2 p_2_1)
        (neighbor p_3_2 p_2_2)
        (neighbor p_1_2 p_2_2)
        (neighbor p_3_2 p_3_1)
        (neighbor p_3_2 p_3_3)
        (neighbor p_2_3 p_2_2)
        (neighbor p_2_1 p_1_1)
        (neighbor p_2_2 p_3_2)
        (neighbor p_2_3 p_3_3)
        (neighbor p_3_1 p_2_1)
        (neighbor p_1_3 p_2_3)
        (neighbor p_3_3 p_3_2)
        (neighbor p_1_1 p_1_2)
        (neighbor p_2_2 p_2_3)
        (neighbor p_1_2 p_1_1)
        (neighbor p_1_3 p_1_2)
        (neighbor p_3_1 p_3_2)
    )

    (:goal
        (and (at t_2 p_1_2) (at t_5 p_2_3) (at t_8 p_3_1) (at t_3 p_1_3) (at t_1 p_2_1) (at t_7 p_3_2) (at t_4 p_1_1) (at t_6 p_3_3) (empty p_2_2) (neighbor p_1_1 p_2_1) (neighbor p_3_3 p_2_3) (neighbor p_1_2 p_1_3) (neighbor p_2_2 p_1_2) (neighbor p_2_1 p_2_2) (neighbor p_2_1 p_3_1) (neighbor p_2_3 p_1_3) (neighbor p_2_2 p_2_1) (neighbor p_3_2 p_2_2) (neighbor p_1_2 p_2_2) (neighbor p_3_2 p_3_1) (neighbor p_3_2 p_3_3) (neighbor p_2_3 p_2_2) (neighbor p_2_1 p_1_1) (neighbor p_2_2 p_3_2) (neighbor p_2_3 p_3_3) (neighbor p_3_1 p_2_1) (neighbor p_1_3 p_2_3) (neighbor p_3_3 p_3_2) (neighbor p_1_1 p_1_2) (neighbor p_2_2 p_2_3) (neighbor p_1_2 p_1_1) (neighbor p_1_3 p_1_2) (neighbor p_3_1 p_3_2))
    )

    
    
    
)

