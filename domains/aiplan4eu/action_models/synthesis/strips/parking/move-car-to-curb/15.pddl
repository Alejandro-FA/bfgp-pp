
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
        (at-curb car_11)
        (at-curb car_10)
        (at-curb car_00)
        (at-curb car_04)
        (at-curb-num car_10 curb_5)
        (at-curb-num car_00 curb_2)
        (at-curb-num car_11 curb_3)
        (at-curb-num car_04 curb_6)
        (behind-car car_09 car_09)
        (behind-car car_08 car_08)
        (behind-car car_06 car_11)
        (behind-car car_03 car_03)
        (behind-car car_01 car_01)
        (behind-car car_05 car_04)
        (behind-car car_07 car_07)
        (behind-car car_02 car_02)
        (car-clear car_06)
        (car-clear car_00)
        (car-clear car_10)
        (car-clear car_05)
        (curb-clear curb_4)
        (curb-clear curb_0)
        (curb-clear curb_1)
    )

    (:goal
        (and (at-curb car_04) (at-curb car_10) (at-curb car_00) (at-curb car_06) (at-curb car_11) (at-curb-num car_11 curb_3) (at-curb-num car_04 curb_6) (at-curb-num car_10 curb_5) (at-curb-num car_06 curb_4) (at-curb-num car_00 curb_2) (behind-car car_09 car_09) (behind-car car_08 car_08) (behind-car car_03 car_03) (behind-car car_01 car_01) (behind-car car_05 car_04) (behind-car car_07 car_07) (behind-car car_02 car_02) (car-clear car_06) (car-clear car_00) (car-clear car_10) (car-clear car_11) (car-clear car_05) (curb-clear curb_0) (curb-clear curb_1))
    )

    
    
    (:metric minimize (total-cost ))
)

