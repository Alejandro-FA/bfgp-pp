
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-sat-x-1)
    (:domain satellite)

    (:objects
        image1 infrared0 instrument0 instrument1 instrument2 instrument3 phenomenon5 phenomenon6 phenomenon7 satellite0 satellite1 spectrograph2 star0 star1 star2 star3 star4 - object
    )

    (:init
        (satellite satellite0)
        (satellite satellite1)
        (instrument instrument2)
        (instrument instrument1)
        (instrument instrument0)
        (instrument instrument3)
        (supports instrument2 infrared0)
        (supports instrument0 spectrograph2)
        (supports instrument3 spectrograph2)
        (supports instrument3 image1)
        (supports instrument1 image1)
        (supports instrument0 infrared0)
        (supports instrument2 image1)
        (supports instrument3 infrared0)
        (calibration_target instrument0 star1)
        (calibration_target instrument1 star2)
        (calibration_target instrument2 star0)
        (calibration_target instrument3 star0)
        (on_board instrument1 satellite0)
        (on_board instrument3 satellite1)
        (on_board instrument2 satellite0)
        (on_board instrument0 satellite0)
        (power_avail satellite0)
        (power_avail satellite1)
        (pointing satellite1 phenomenon7)
        (pointing satellite0 star0)
        (mode image1)
        (mode infrared0)
        (mode spectrograph2)
        (direction star0)
        (direction star2)
        (direction star3)
        (direction phenomenon5)
        (direction phenomenon7)
        (direction star1)
        (direction star4)
        (direction phenomenon6)
        (calibrated instrument2)
        (have_image phenomenon6 infrared0)
        (have_image star3 infrared0)
    )

    (:goal
        (and (satellite satellite0) (satellite satellite1) (instrument instrument0) (instrument instrument1) (instrument instrument2) (instrument instrument3) (supports instrument2 infrared0) (supports instrument0 spectrograph2) (supports instrument3 spectrograph2) (supports instrument3 image1) (supports instrument1 image1) (supports instrument0 infrared0) (supports instrument2 image1) (supports instrument3 infrared0) (calibration_target instrument0 star1) (calibration_target instrument1 star2) (calibration_target instrument2 star0) (calibration_target instrument3 star0) (on_board instrument1 satellite0) (on_board instrument3 satellite1) (on_board instrument2 satellite0) (on_board instrument0 satellite0) (power_avail satellite0) (pointing satellite1 phenomenon7) (pointing satellite0 star0) (mode image1) (mode infrared0) (mode spectrograph2) (direction star0) (direction star2) (direction star3) (direction phenomenon5) (direction phenomenon7) (direction star1) (direction star4) (direction phenomenon6) (power_on instrument3) (calibrated instrument2) (have_image phenomenon6 infrared0) (have_image star3 infrared0))
    )

    
    
    
)

