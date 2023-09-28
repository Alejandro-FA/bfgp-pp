
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem parking)
    (:domain parking)

    (:objects
        car_00 car_01 car_02 car_03 car_04 car_05 car_06 car_07 car_08 car_09 car_10 car_11 - car
        curb_0 curb_1 curb_2 curb_3 curb_4 curb_5 curb_6 - curb
    )

    (:init
        (= (total-cost ) 0.0)
        (at-curb car_04)
        (at-curb car_02)
        (at-curb car_00)
        (at-curb car_06)
        (at-curb car_03)
        (at-curb car_05)
        (at-curb-num car_05 curb_5)
        (at-curb-num car_06 curb_6)
        (at-curb-num car_02 curb_2)
        (at-curb-num car_00 curb_0)
        (at-curb-num car_04 curb_1)
        (at-curb-num car_03 curb_3)
        (behind-car car_09 car_02)
        (behind-car car_01 car_05)
        (behind-car car_08 car_04)
        (behind-car car_10 car_03)
        (behind-car car_11 car_06)
        (behind-car car_07 car_00)
        (car-clear car_09)
        (car-clear car_07)
        (car-clear car_01)
        (car-clear car_10)
        (car-clear car_11)
        (car-clear car_08)
        (curb-clear curb_4)
    )

    (:goal
        (and (at-curb car_04) (at-curb car_02) (at-curb car_06) (at-curb car_00) (at-curb car_08) (at-curb car_03) (at-curb car_05) (at-curb-num car_08 curb_4) (at-curb-num car_05 curb_5) (at-curb-num car_06 curb_6) (at-curb-num car_00 curb_0) (at-curb-num car_04 curb_1) (at-curb-num car_02 curb_2) (at-curb-num car_03 curb_3) (behind-car car_09 car_02) (behind-car car_01 car_05) (behind-car car_10 car_03) (behind-car car_11 car_06) (behind-car car_07 car_00) (car-clear car_04) (car-clear car_09) (car-clear car_07) (car-clear car_01) (car-clear car_10) (car-clear car_11) (car-clear car_08))
    )

    
    
    (:metric minimize (total-cost ))
)

