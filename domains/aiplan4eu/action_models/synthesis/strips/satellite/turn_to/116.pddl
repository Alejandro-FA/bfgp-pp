
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-sat-x-1)
    (:domain satellite)

    (:objects
        groundstation1 infrared0 infrared1 instrument0 instrument1 instrument2 phenomenon8 phenomenon9 planet3 planet5 satellite0 satellite1 star0 star2 star4 star6 star7 thermograph2 - object
    )

    (:init
        (satellite satellite0)
        (satellite satellite1)
        (instrument instrument1)
        (instrument instrument2)
        (instrument instrument0)
        (supports instrument0 infrared0)
        (supports instrument2 infrared1)
        (supports instrument2 thermograph2)
        (supports instrument1 infrared1)
        (supports instrument1 thermograph2)
        (supports instrument0 thermograph2)
        (supports instrument1 infrared0)
        (calibration_target instrument0 star0)
        (calibration_target instrument2 star2)
        (calibration_target instrument1 star2)
        (on_board instrument2 satellite1)
        (on_board instrument1 satellite1)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (pointing satellite1 planet5)
        (pointing satellite0 star6)
        (mode infrared1)
        (mode thermograph2)
        (mode infrared0)
        (direction star2)
        (direction star6)
        (direction groundstation1)
        (direction phenomenon8)
        (direction star0)
        (direction planet3)
        (direction planet5)
        (direction star7)
        (direction star4)
        (direction phenomenon9)
        (power_on instrument1)
        (calibrated instrument1)
        (have_image star4 infrared1)
        (have_image star6 infrared1)
        (have_image phenomenon9 infrared0)
        (have_image planet5 thermograph2)
        (have_image planet3 infrared1)
        (have_image phenomenon8 thermograph2)
    )

    (:goal
        (and (satellite satellite0) (satellite satellite1) (instrument instrument1) (instrument instrument0) (instrument instrument2) (supports instrument0 infrared0) (supports instrument2 thermograph2) (supports instrument1 infrared1) (supports instrument1 infrared0) (supports instrument1 thermograph2) (supports instrument0 thermograph2) (supports instrument2 infrared1) (calibration_target instrument0 star0) (calibration_target instrument2 star2) (calibration_target instrument1 star2) (on_board instrument2 satellite1) (on_board instrument1 satellite1) (on_board instrument0 satellite0) (power_avail satellite0) (pointing satellite1 star7) (pointing satellite0 star6) (mode infrared1) (mode thermograph2) (mode infrared0) (direction star2) (direction star6) (direction phenomenon8) (direction groundstation1) (direction star0) (direction planet3) (direction star7) (direction star4) (direction planet5) (direction phenomenon9) (power_on instrument1) (calibrated instrument1) (have_image star4 infrared1) (have_image star6 infrared1) (have_image phenomenon9 infrared0) (have_image planet5 thermograph2) (have_image planet3 infrared1) (have_image phenomenon8 thermograph2))
    )

    
    
    
)

