
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem parking)
    (:domain parking)

    (:objects
        car_00 car_01 car_02 car_03 car_04 car_05 car_06 car_07 car_08 car_09 car_10 car_11 car_12 car_13 car_14 car_15 car_16 car_17 - car
        curb_0 curb_1 curb_2 curb_3 curb_4 curb_5 curb_6 curb_7 curb_8 curb_9 - curb
    )

    (:init
        (= (total-cost ) 0.0)
        (at-curb car_09)
        (at-curb car_11)
        (at-curb car_16)
        (at-curb car_14)
        (at-curb car_12)
        (at-curb car_07)
        (at-curb car_10)
        (at-curb car_15)
        (at-curb-num car_10 curb_3)
        (at-curb-num car_09 curb_0)
        (at-curb-num car_15 curb_5)
        (at-curb-num car_07 curb_9)
        (at-curb-num car_12 curb_6)
        (at-curb-num car_14 curb_2)
        (at-curb-num car_11 curb_1)
        (at-curb-num car_16 curb_7)
        (behind-car car_06 car_12)
        (behind-car car_02 car_02)
        (behind-car car_03 car_11)
        (behind-car car_17 car_17)
        (behind-car car_04 car_04)
        (behind-car car_00 car_14)
        (behind-car car_08 car_08)
        (behind-car car_13 car_13)
        (behind-car car_01 car_07)
        (behind-car car_05 car_05)
        (car-clear car_06)
        (car-clear car_09)
        (car-clear car_01)
        (car-clear car_16)
        (car-clear car_03)
        (car-clear car_10)
        (car-clear car_15)
        (car-clear car_00)
        (curb-clear curb_4)
        (curb-clear curb_8)
    )

    (:goal
        (and (at-curb car_06) (at-curb car_09) (at-curb car_11) (at-curb car_16) (at-curb car_14) (at-curb car_12) (at-curb car_07) (at-curb car_10) (at-curb car_15) (at-curb-num car_10 curb_3) (at-curb-num car_09 curb_0) (at-curb-num car_06 curb_8) (at-curb-num car_15 curb_5) (at-curb-num car_07 curb_9) (at-curb-num car_12 curb_6) (at-curb-num car_14 curb_2) (at-curb-num car_11 curb_1) (at-curb-num car_16 curb_7) (behind-car car_02 car_02) (behind-car car_17 car_17) (behind-car car_04 car_04) (behind-car car_05 car_05) (behind-car car_00 car_14) (behind-car car_08 car_08) (behind-car car_13 car_13) (behind-car car_01 car_07) (behind-car car_03 car_11) (car-clear car_06) (car-clear car_09) (car-clear car_01) (car-clear car_16) (car-clear car_03) (car-clear car_12) (car-clear car_10) (car-clear car_15) (car-clear car_00) (curb-clear curb_4))
    )

    
    
    (:metric minimize (total-cost ))
)

