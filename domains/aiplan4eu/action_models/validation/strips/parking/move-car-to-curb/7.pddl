
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem parking)
    (:domain parking)

    (:objects
        car_00 car_01 car_02 car_03 car_04 car_05 car_06 car_07 car_08 car_09 car_10 car_11 car_12 car_13 car_14 car_15 - car
        curb_0 curb_1 curb_2 curb_3 curb_4 curb_5 curb_6 curb_7 curb_8 - curb
    )

    (:init
        (= (total-cost ) 0.0)
        (at-curb car_12)
        (at-curb car_13)
        (at-curb car_06)
        (at-curb car_11)
        (at-curb car_08)
        (at-curb car_05)
        (at-curb-num car_05 curb_6)
        (at-curb-num car_12 curb_7)
        (at-curb-num car_06 curb_0)
        (at-curb-num car_11 curb_8)
        (at-curb-num car_13 curb_5)
        (at-curb-num car_08 curb_3)
        (behind-car car_14 car_12)
        (behind-car car_00 car_11)
        (behind-car car_15 car_15)
        (behind-car car_01 car_01)
        (behind-car car_07 car_07)
        (behind-car car_03 car_05)
        (behind-car car_04 car_04)
        (behind-car car_02 car_02)
        (behind-car car_09 car_08)
        (behind-car car_10 car_10)
        (car-clear car_09)
        (car-clear car_13)
        (car-clear car_14)
        (car-clear car_06)
        (car-clear car_00)
        (car-clear car_03)
        (curb-clear curb_4)
        (curb-clear curb_2)
        (curb-clear curb_1)
    )

    (:goal
        (and (at-curb car_09) (at-curb car_12) (at-curb car_13) (at-curb car_06) (at-curb car_11) (at-curb car_08) (at-curb car_05) (at-curb-num car_09 curb_2) (at-curb-num car_12 curb_7) (at-curb-num car_05 curb_6) (at-curb-num car_06 curb_0) (at-curb-num car_13 curb_5) (at-curb-num car_11 curb_8) (at-curb-num car_08 curb_3) (behind-car car_14 car_12) (behind-car car_00 car_11) (behind-car car_15 car_15) (behind-car car_01 car_01) (behind-car car_07 car_07) (behind-car car_03 car_05) (behind-car car_04 car_04) (behind-car car_02 car_02) (behind-car car_10 car_10) (car-clear car_09) (car-clear car_13) (car-clear car_14) (car-clear car_06) (car-clear car_00) (car-clear car_08) (car-clear car_03) (curb-clear curb_4) (curb-clear curb_1))
    )

    
    
    (:metric minimize (total-cost ))
)

