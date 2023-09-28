
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
        (at-curb car_02)
        (at-curb car_07)
        (at-curb car_12)
        (at-curb car_01)
        (at-curb car_06)
        (at-curb car_00)
        (at-curb car_05)
        (at-curb-num car_06 curb_6)
        (at-curb-num car_00 curb_0)
        (at-curb-num car_04 curb_4)
        (at-curb-num car_12 curb_5)
        (at-curb-num car_01 curb_1)
        (at-curb-num car_05 curb_3)
        (at-curb-num car_02 curb_2)
        (at-curb-num car_07 curb_7)
        (behind-car car_03 car_06)
        (behind-car car_11 car_12)
        (behind-car car_09 car_01)
        (behind-car car_10 car_02)
        (behind-car car_13 car_05)
        (behind-car car_08 car_00)
        (car-clear car_04)
        (car-clear car_09)
        (car-clear car_07)
        (car-clear car_13)
        (car-clear car_10)
        (car-clear car_11)
        (car-clear car_08)
        (car-clear car_03)
    )

    (:goal
        (and (at-curb car_04) (at-curb car_02) (at-curb car_07) (at-curb car_12) (at-curb car_01) (at-curb car_06) (at-curb car_00) (at-curb car_05) (at-curb-num car_06 curb_6) (at-curb-num car_00 curb_0) (at-curb-num car_04 curb_4) (at-curb-num car_12 curb_5) (at-curb-num car_01 curb_1) (at-curb-num car_05 curb_3) (at-curb-num car_02 curb_2) (at-curb-num car_07 curb_7) (behind-car car_03 car_06) (behind-car car_11 car_12) (behind-car car_09 car_01) (behind-car car_10 car_02) (behind-car car_08 car_00) (behind-car car_13 car_07) (car-clear car_04) (car-clear car_09) (car-clear car_13) (car-clear car_10) (car-clear car_11) (car-clear car_08) (car-clear car_03) (car-clear car_05))
    )

    
    
    (:metric minimize (total-cost ))
)

