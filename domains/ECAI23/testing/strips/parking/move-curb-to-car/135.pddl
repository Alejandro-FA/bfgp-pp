
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem parking)
    (:domain parking)

    (:objects
        car_00 car_01 car_02 car_03 car_04 car_05 car_06 car_07 car_08 car_09 car_10 car_11 car_12 car_13 car_14 car_15 car_16 car_17 car_18 car_19 - car
        curb_00 curb_01 curb_02 curb_03 curb_04 curb_05 curb_06 curb_07 curb_08 curb_09 curb_10 - curb
    )

    (:init
        (= (total-cost ) 0.0)
        (at-curb car_06)
        (at-curb car_08)
        (at-curb car_05)
        (at-curb car_02)
        (at-curb car_09)
        (at-curb car_17)
        (at-curb car_01)
        (at-curb car_04)
        (at-curb car_03)
        (at-curb car_10)
        (at-curb car_00)
        (at-curb-num car_17 curb_09)
        (at-curb-num car_05 curb_01)
        (at-curb-num car_10 curb_04)
        (at-curb-num car_03 curb_00)
        (at-curb-num car_01 curb_07)
        (at-curb-num car_00 curb_10)
        (at-curb-num car_02 curb_06)
        (at-curb-num car_08 curb_08)
        (at-curb-num car_09 curb_03)
        (at-curb-num car_04 curb_05)
        (at-curb-num car_06 curb_02)
        (behind-car car_18 car_02)
        (behind-car car_12 car_10)
        (behind-car car_14 car_03)
        (behind-car car_11 car_00)
        (behind-car car_07 car_09)
        (behind-car car_16 car_05)
        (behind-car car_15 car_04)
        (behind-car car_13 car_01)
        (behind-car car_19 car_08)
        (car-clear car_06)
        (car-clear car_17)
        (car-clear car_11)
        (car-clear car_16)
        (car-clear car_19)
        (car-clear car_14)
        (car-clear car_13)
        (car-clear car_18)
        (car-clear car_07)
        (car-clear car_12)
        (car-clear car_15)
    )

    (:goal
        (and (at-curb car_06) (at-curb car_08) (at-curb car_05) (at-curb car_02) (at-curb car_09) (at-curb car_01) (at-curb car_04) (at-curb car_03) (at-curb car_10) (at-curb car_00) (at-curb-num car_10 curb_04) (at-curb-num car_03 curb_00) (at-curb-num car_09 curb_03) (at-curb-num car_01 curb_07) (at-curb-num car_00 curb_10) (at-curb-num car_02 curb_06) (at-curb-num car_08 curb_08) (at-curb-num car_05 curb_01) (at-curb-num car_04 curb_05) (at-curb-num car_06 curb_02) (behind-car car_17 car_06) (behind-car car_18 car_02) (behind-car car_12 car_10) (behind-car car_14 car_03) (behind-car car_11 car_00) (behind-car car_07 car_09) (behind-car car_16 car_05) (behind-car car_15 car_04) (behind-car car_13 car_01) (behind-car car_19 car_08) (car-clear car_17) (car-clear car_11) (car-clear car_16) (car-clear car_19) (car-clear car_14) (car-clear car_13) (car-clear car_18) (car-clear car_07) (car-clear car_12) (car-clear car_15) (curb-clear curb_09))
    )

    
    
    (:metric minimize (total-cost ))
)

