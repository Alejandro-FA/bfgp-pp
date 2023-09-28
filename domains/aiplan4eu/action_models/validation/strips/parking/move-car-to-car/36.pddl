
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
        (at-curb car_04)
        (at-curb car_02)
        (at-curb car_15)
        (at-curb car_01)
        (at-curb car_14)
        (at-curb car_10)
        (at-curb car_06)
        (at-curb car_11)
        (at-curb car_03)
        (at-curb car_16)
        (at-curb-num car_04 curb_9)
        (at-curb-num car_14 curb_5)
        (at-curb-num car_02 curb_7)
        (at-curb-num car_15 curb_4)
        (at-curb-num car_11 curb_6)
        (at-curb-num car_16 curb_2)
        (at-curb-num car_10 curb_1)
        (at-curb-num car_03 curb_3)
        (at-curb-num car_06 curb_8)
        (at-curb-num car_01 curb_0)
        (behind-car car_13 car_15)
        (behind-car car_07 car_06)
        (behind-car car_08 car_16)
        (behind-car car_12 car_11)
        (behind-car car_09 car_03)
        (behind-car car_17 car_17)
        (behind-car car_00 car_14)
        (behind-car car_05 car_10)
        (car-clear car_04)
        (car-clear car_09)
        (car-clear car_02)
        (car-clear car_07)
        (car-clear car_12)
        (car-clear car_01)
        (car-clear car_13)
        (car-clear car_00)
        (car-clear car_08)
        (car-clear car_05)
    )

    (:goal
        (and (at-curb car_04) (at-curb car_02) (at-curb car_15) (at-curb car_01) (at-curb car_14) (at-curb car_10) (at-curb car_06) (at-curb car_11) (at-curb car_03) (at-curb car_16) (at-curb-num car_04 curb_9) (at-curb-num car_06 curb_8) (at-curb-num car_14 curb_5) (at-curb-num car_11 curb_6) (at-curb-num car_15 curb_4) (at-curb-num car_16 curb_2) (at-curb-num car_10 curb_1) (at-curb-num car_03 curb_3) (at-curb-num car_02 curb_7) (at-curb-num car_01 curb_0) (behind-car car_13 car_15) (behind-car car_07 car_06) (behind-car car_08 car_16) (behind-car car_12 car_01) (behind-car car_09 car_03) (behind-car car_17 car_17) (behind-car car_00 car_14) (behind-car car_05 car_10) (car-clear car_04) (car-clear car_09) (car-clear car_02) (car-clear car_07) (car-clear car_12) (car-clear car_13) (car-clear car_00) (car-clear car_11) (car-clear car_08) (car-clear car_05))
    )

    
    
    (:metric minimize (total-cost ))
)

