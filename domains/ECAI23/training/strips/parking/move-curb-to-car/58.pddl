
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
        (at-curb car_02)
        (at-curb car_08)
        (at-curb car_05)
        (at-curb car_09)
        (at-curb car_04)
        (at-curb car_00)
        (at-curb-num car_00 curb_6)
        (at-curb-num car_08 curb_7)
        (at-curb-num car_02 curb_0)
        (at-curb-num car_05 curb_3)
        (at-curb-num car_09 curb_5)
        (at-curb-num car_04 curb_1)
        (behind-car car_12 car_12)
        (behind-car car_06 car_08)
        (behind-car car_10 car_10)
        (behind-car car_07 car_05)
        (behind-car car_01 car_01)
        (behind-car car_03 car_02)
        (behind-car car_13 car_13)
        (behind-car car_11 car_11)
        (car-clear car_06)
        (car-clear car_09)
        (car-clear car_04)
        (car-clear car_03)
        (car-clear car_07)
        (car-clear car_00)
        (curb-clear curb_2)
        (curb-clear curb_4)
    )

    (:goal
        (and (at-curb car_02) (at-curb car_08) (at-curb car_05) (at-curb car_04) (at-curb car_00) (at-curb-num car_00 curb_6) (at-curb-num car_08 curb_7) (at-curb-num car_02 curb_0) (at-curb-num car_05 curb_3) (at-curb-num car_04 curb_1) (behind-car car_12 car_12) (behind-car car_06 car_08) (behind-car car_10 car_10) (behind-car car_07 car_05) (behind-car car_01 car_01) (behind-car car_03 car_02) (behind-car car_13 car_13) (behind-car car_11 car_11) (behind-car car_09 car_04) (car-clear car_06) (car-clear car_09) (car-clear car_03) (car-clear car_07) (car-clear car_00) (curb-clear curb_2) (curb-clear curb_5) (curb-clear curb_4))
    )

    
    
    (:metric minimize (total-cost ))
)

