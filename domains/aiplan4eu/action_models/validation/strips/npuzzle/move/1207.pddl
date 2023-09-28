
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem n-puzzle-target-5x5-15)
    (:domain n-puzzle-typed)

    (:objects
        p_1_1 p_1_2 p_1_3 p_1_4 p_1_5 p_2_1 p_2_2 p_2_3 p_2_4 p_2_5 p_3_1 p_3_2 p_3_3 p_3_4 p_3_5 p_4_1 p_4_2 p_4_3 p_4_4 p_4_5 p_5_1 p_5_2 p_5_3 p_5_4 p_5_5 - position
        t_1 t_10 t_11 t_12 t_13 t_14 t_15 t_16 t_17 t_18 t_19 t_2 t_20 t_21 t_22 t_23 t_24 t_3 t_4 t_5 t_6 t_7 t_8 t_9 - tile
    )

    (:init
        (at t_7 p_2_2)
        (at t_11 p_3_1)
        (at t_9 p_2_4)
        (at t_13 p_3_3)
        (at t_20 p_5_5)
        (at t_15 p_3_5)
        (at t_4 p_1_4)
        (at t_3 p_1_3)
        (at t_18 p_4_3)
        (at t_14 p_3_4)
        (at t_24 p_5_4)
        (at t_5 p_1_5)
        (at t_23 p_5_3)
        (at t_21 p_5_1)
        (at t_2 p_1_2)
        (at t_8 p_2_3)
        (at t_17 p_4_2)
        (at t_6 p_2_1)
        (at t_19 p_4_4)
        (at t_22 p_5_2)
        (at t_12 p_3_2)
        (at t_16 p_4_1)
        (at t_10 p_2_5)
        (at t_1 p_1_1)
        (empty p_4_5)
        (neighbor p_2_5 p_2_4)
        (neighbor p_1_2 p_1_1)
        (neighbor p_2_1 p_1_1)
        (neighbor p_3_1 p_3_2)
        (neighbor p_5_4 p_4_4)
        (neighbor p_3_2 p_3_1)
        (neighbor p_1_4 p_1_3)
        (neighbor p_2_4 p_1_4)
        (neighbor p_4_1 p_3_1)
        (neighbor p_2_2 p_3_2)
        (neighbor p_4_4 p_5_4)
        (neighbor p_3_1 p_2_1)
        (neighbor p_1_2 p_2_2)
        (neighbor p_2_1 p_2_2)
        (neighbor p_2_2 p_2_1)
        (neighbor p_5_3 p_5_2)
        (neighbor p_3_2 p_3_3)
        (neighbor p_4_2 p_4_3)
        (neighbor p_3_4 p_3_5)
        (neighbor p_5_4 p_5_3)
        (neighbor p_1_3 p_2_3)
        (neighbor p_4_4 p_4_5)
        (neighbor p_2_4 p_2_3)
        (neighbor p_4_4 p_4_3)
        (neighbor p_3_3 p_3_4)
        (neighbor p_4_5 p_4_4)
        (neighbor p_1_3 p_1_4)
        (neighbor p_2_1 p_3_1)
        (neighbor p_3_3 p_2_3)
        (neighbor p_3_5 p_3_4)
        (neighbor p_5_2 p_5_1)
        (neighbor p_4_5 p_5_5)
        (neighbor p_1_1 p_1_2)
        (neighbor p_1_5 p_1_4)
        (neighbor p_5_4 p_5_5)
        (neighbor p_2_4 p_2_5)
        (neighbor p_4_2 p_3_2)
        (neighbor p_1_3 p_1_2)
        (neighbor p_1_2 p_1_3)
        (neighbor p_2_3 p_2_2)
        (neighbor p_4_3 p_3_3)
        (neighbor p_5_3 p_5_4)
        (neighbor p_1_1 p_2_1)
        (neighbor p_5_1 p_5_2)
        (neighbor p_4_1 p_5_1)
        (neighbor p_4_3 p_4_4)
        (neighbor p_1_4 p_1_5)
        (neighbor p_3_4 p_2_4)
        (neighbor p_3_3 p_3_2)
        (neighbor p_5_3 p_4_3)
        (neighbor p_4_4 p_3_4)
        (neighbor p_2_5 p_1_5)
        (neighbor p_4_5 p_3_5)
        (neighbor p_3_3 p_4_3)
        (neighbor p_3_2 p_2_2)
        (neighbor p_3_4 p_3_3)
        (neighbor p_3_5 p_4_5)
        (neighbor p_1_5 p_2_5)
        (neighbor p_3_2 p_4_2)
        (neighbor p_5_2 p_4_2)
        (neighbor p_5_5 p_5_4)
        (neighbor p_3_5 p_2_5)
        (neighbor p_5_2 p_5_3)
        (neighbor p_2_2 p_2_3)
        (neighbor p_5_1 p_4_1)
        (neighbor p_3_4 p_4_4)
        (neighbor p_3_1 p_4_1)
        (neighbor p_2_5 p_3_5)
        (neighbor p_5_5 p_4_5)
        (neighbor p_2_3 p_2_4)
        (neighbor p_4_2 p_4_1)
        (neighbor p_2_3 p_3_3)
        (neighbor p_4_3 p_4_2)
        (neighbor p_2_4 p_3_4)
        (neighbor p_2_3 p_1_3)
        (neighbor p_4_1 p_4_2)
        (neighbor p_2_2 p_1_2)
        (neighbor p_4_2 p_5_2)
        (neighbor p_4_3 p_5_3)
        (neighbor p_1_4 p_2_4)
    )

    (:goal
        (and (at t_7 p_2_2) (at t_11 p_3_1) (at t_9 p_2_4) (at t_13 p_3_3) (at t_15 p_3_5) (at t_4 p_1_4) (at t_3 p_1_3) (at t_18 p_4_3) (at t_14 p_3_4) (at t_24 p_5_4) (at t_5 p_1_5) (at t_23 p_5_3) (at t_21 p_5_1) (at t_2 p_1_2) (at t_8 p_2_3) (at t_17 p_4_2) (at t_6 p_2_1) (at t_19 p_4_4) (at t_22 p_5_2) (at t_12 p_3_2) (at t_16 p_4_1) (at t_20 p_4_5) (at t_10 p_2_5) (at t_1 p_1_1) (empty p_5_5) (neighbor p_2_5 p_2_4) (neighbor p_1_2 p_1_1) (neighbor p_2_1 p_1_1) (neighbor p_3_1 p_3_2) (neighbor p_5_4 p_4_4) (neighbor p_3_2 p_3_1) (neighbor p_1_4 p_1_3) (neighbor p_2_4 p_1_4) (neighbor p_4_1 p_3_1) (neighbor p_2_2 p_3_2) (neighbor p_4_4 p_5_4) (neighbor p_3_1 p_2_1) (neighbor p_1_2 p_2_2) (neighbor p_2_1 p_2_2) (neighbor p_2_2 p_2_1) (neighbor p_5_3 p_5_2) (neighbor p_3_2 p_3_3) (neighbor p_3_4 p_3_5) (neighbor p_4_2 p_4_3) (neighbor p_5_4 p_5_3) (neighbor p_1_3 p_2_3) (neighbor p_4_4 p_4_5) (neighbor p_2_4 p_2_3) (neighbor p_4_4 p_4_3) (neighbor p_3_3 p_3_4) (neighbor p_4_5 p_4_4) (neighbor p_1_3 p_1_4) (neighbor p_2_1 p_3_1) (neighbor p_3_3 p_2_3) (neighbor p_3_5 p_3_4) (neighbor p_5_2 p_5_1) (neighbor p_4_5 p_5_5) (neighbor p_1_1 p_1_2) (neighbor p_1_5 p_1_4) (neighbor p_5_4 p_5_5) (neighbor p_2_4 p_2_5) (neighbor p_4_2 p_3_2) (neighbor p_1_3 p_1_2) (neighbor p_1_2 p_1_3) (neighbor p_2_3 p_2_2) (neighbor p_4_3 p_3_3) (neighbor p_5_3 p_5_4) (neighbor p_1_1 p_2_1) (neighbor p_5_1 p_5_2) (neighbor p_4_1 p_5_1) (neighbor p_4_3 p_4_4) (neighbor p_1_4 p_1_5) (neighbor p_3_4 p_2_4) (neighbor p_3_3 p_3_2) (neighbor p_5_3 p_4_3) (neighbor p_4_4 p_3_4) (neighbor p_2_5 p_1_5) (neighbor p_4_5 p_3_5) (neighbor p_3_3 p_4_3) (neighbor p_3_2 p_2_2) (neighbor p_3_4 p_3_3) (neighbor p_3_5 p_4_5) (neighbor p_1_5 p_2_5) (neighbor p_3_2 p_4_2) (neighbor p_5_2 p_4_2) (neighbor p_5_5 p_5_4) (neighbor p_3_5 p_2_5) (neighbor p_5_2 p_5_3) (neighbor p_2_2 p_2_3) (neighbor p_5_1 p_4_1) (neighbor p_3_4 p_4_4) (neighbor p_3_1 p_4_1) (neighbor p_2_5 p_3_5) (neighbor p_5_5 p_4_5) (neighbor p_2_3 p_2_4) (neighbor p_4_2 p_4_1) (neighbor p_2_3 p_3_3) (neighbor p_4_3 p_4_2) (neighbor p_2_4 p_3_4) (neighbor p_2_3 p_1_3) (neighbor p_4_1 p_4_2) (neighbor p_2_2 p_1_2) (neighbor p_4_2 p_5_2) (neighbor p_4_3 p_5_3) (neighbor p_1_4 p_2_4))
    )

    
    
    
)

