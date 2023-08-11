
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
        (at-curb car_02)
        (at-curb car_08)
        (at-curb car_05)
        (at-curb car_17)
        (at-curb car_11)
        (at-curb car_01)
        (at-curb car_16)
        (at-curb car_04)
        (at-curb car_12)
        (at-curb car_10)
        (at-curb-num car_10 curb_3)
        (at-curb-num car_01 curb_9)
        (at-curb-num car_05 curb_4)
        (at-curb-num car_12 curb_6)
        (at-curb-num car_11 curb_1)
        (at-curb-num car_17 curb_5)
        (at-curb-num car_16 curb_7)
        (at-curb-num car_04 curb_8)
        (at-curb-num car_08 curb_0)
        (at-curb-num car_02 curb_2)
        (behind-car car_06 car_12)
        (behind-car car_09 car_10)
        (behind-car car_13 car_04)
        (behind-car car_03 car_05)
        (behind-car car_07 car_16)
        (behind-car car_00 car_08)
        (behind-car car_15 car_02)
        (behind-car car_14 car_17)
        (car-clear car_06)
        (car-clear car_09)
        (car-clear car_11)
        (car-clear car_01)
        (car-clear car_14)
        (car-clear car_03)
        (car-clear car_13)
        (car-clear car_07)
        (car-clear car_15)
        (car-clear car_00)
    )

    (:goal
        (and (at-curb car_02) (at-curb car_08) (at-curb car_05) (at-curb car_17) (at-curb car_11) (at-curb car_01) (at-curb car_16) (at-curb car_04) (at-curb car_12) (at-curb car_10) (at-curb-num car_10 curb_3) (at-curb-num car_01 curb_9) (at-curb-num car_05 curb_4) (at-curb-num car_12 curb_6) (at-curb-num car_11 curb_1) (at-curb-num car_17 curb_5) (at-curb-num car_16 curb_7) (at-curb-num car_04 curb_8) (at-curb-num car_08 curb_0) (at-curb-num car_02 curb_2) (behind-car car_06 car_12) (behind-car car_09 car_10) (behind-car car_13 car_04) (behind-car car_07 car_16) (behind-car car_00 car_08) (behind-car car_15 car_02) (behind-car car_14 car_17) (behind-car car_03 car_01) (car-clear car_06) (car-clear car_05) (car-clear car_09) (car-clear car_11) (car-clear car_14) (car-clear car_03) (car-clear car_13) (car-clear car_07) (car-clear car_15) (car-clear car_00))
    )

    
    
    (:metric minimize (total-cost ))
)

