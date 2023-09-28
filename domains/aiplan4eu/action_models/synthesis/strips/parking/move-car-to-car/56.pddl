
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem parking)
    (:domain parking)

    (:objects
        car_00 car_01 car_02 car_03 car_04 car_05 car_06 car_07 car_08 car_09 car_10 car_11 car_12 car_13 - car
        curb_0 curb_1 curb_2 curb_3 curb_4 curb_5 curb_6 curb_7 - curb
    )

    (:init
        (= (total-cost ) 0.0)
        (at-curb car_04)
        (at-curb car_09)
        (at-curb car_12)
        (at-curb car_01)
        (at-curb car_10)
        (at-curb car_00)
        (at-curb car_11)
        (at-curb car_03)
        (at-curb-num car_09 curb_1)
        (at-curb-num car_11 curb_7)
        (at-curb-num car_04 curb_4)
        (at-curb-num car_12 curb_5)
        (at-curb-num car_03 curb_6)
        (at-curb-num car_10 curb_2)
        (at-curb-num car_00 curb_3)
        (at-curb-num car_01 curb_0)
        (behind-car car_05 car_05)
        (behind-car car_08 car_00)
        (behind-car car_07 car_07)
        (behind-car car_02 car_01)
        (behind-car car_13 car_13)
        (behind-car car_06 car_10)
        (car-clear car_04)
        (car-clear car_09)
        (car-clear car_02)
        (car-clear car_12)
        (car-clear car_06)
        (car-clear car_11)
        (car-clear car_08)
        (car-clear car_03)
    )

    (:goal
        (and (at-curb car_04) (at-curb car_09) (at-curb car_12) (at-curb car_01) (at-curb car_10) (at-curb car_00) (at-curb car_11) (at-curb car_03) (at-curb-num car_09 curb_1) (at-curb-num car_11 curb_7) (at-curb-num car_04 curb_4) (at-curb-num car_03 curb_6) (at-curb-num car_12 curb_5) (at-curb-num car_10 curb_2) (at-curb-num car_00 curb_3) (at-curb-num car_01 curb_0) (behind-car car_05 car_05) (behind-car car_08 car_04) (behind-car car_07 car_07) (behind-car car_02 car_01) (behind-car car_13 car_13) (behind-car car_06 car_10) (car-clear car_09) (car-clear car_02) (car-clear car_12) (car-clear car_06) (car-clear car_00) (car-clear car_11) (car-clear car_08) (car-clear car_03))
    )

    
    
    (:metric minimize (total-cost ))
)

