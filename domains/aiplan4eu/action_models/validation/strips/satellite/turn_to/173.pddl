
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-sat-x-1)
    (:domain satellite)

    (:objects
        image1 infrared0 instrument0 instrument1 instrument10 instrument11 instrument12 instrument13 instrument14 instrument15 instrument16 instrument17 instrument2 instrument3 instrument4 instrument5 instrument6 instrument7 instrument8 instrument9 phenomenon11 phenomenon18 phenomenon28 phenomenon30 phenomenon32 phenomenon34 phenomenon36 phenomenon38 phenomenon40 phenomenon44 phenomenon5 phenomenon6 phenomenon7 phenomenon8 planet14 planet15 planet17 planet19 planet20 planet31 planet33 planet35 planet41 planet42 planet43 planet46 planet48 planet51 satellite0 satellite1 satellite2 satellite3 satellite4 satellite5 satellite6 spectrograph2 star0 star1 star10 star12 star13 star16 star2 star21 star22 star23 star24 star25 star26 star27 star29 star3 star37 star39 star4 star45 star47 star49 star50 star52 star9 - object
    )

    (:init
        (satellite satellite6)
        (satellite satellite5)
        (satellite satellite3)
        (satellite satellite2)
        (satellite satellite4)
        (satellite satellite1)
        (satellite satellite0)
        (instrument instrument6)
        (instrument instrument7)
        (instrument instrument3)
        (instrument instrument1)
        (instrument instrument2)
        (instrument instrument5)
        (instrument instrument13)
        (instrument instrument15)
        (instrument instrument17)
        (instrument instrument0)
        (instrument instrument8)
        (instrument instrument10)
        (instrument instrument4)
        (instrument instrument9)
        (instrument instrument12)
        (instrument instrument11)
        (instrument instrument16)
        (instrument instrument14)
        (supports instrument13 image1)
        (supports instrument1 image1)
        (supports instrument3 infrared0)
        (supports instrument0 image1)
        (supports instrument6 spectrograph2)
        (supports instrument14 spectrograph2)
        (supports instrument17 infrared0)
        (supports instrument16 infrared0)
        (supports instrument5 infrared0)
        (supports instrument15 infrared0)
        (supports instrument16 image1)
        (supports instrument12 infrared0)
        (supports instrument12 spectrograph2)
        (supports instrument5 image1)
        (supports instrument6 infrared0)
        (supports instrument14 infrared0)
        (supports instrument4 spectrograph2)
        (supports instrument6 image1)
        (supports instrument11 spectrograph2)
        (supports instrument10 spectrograph2)
        (supports instrument9 infrared0)
        (supports instrument8 spectrograph2)
        (supports instrument7 spectrograph2)
        (supports instrument13 spectrograph2)
        (supports instrument11 infrared0)
        (supports instrument10 infrared0)
        (supports instrument2 infrared0)
        (supports instrument11 image1)
        (supports instrument10 image1)
        (supports instrument2 image1)
        (supports instrument16 spectrograph2)
        (supports instrument7 infrared0)
        (supports instrument13 infrared0)
        (supports instrument8 image1)
        (supports instrument1 infrared0)
        (calibration_target instrument0 star2)
        (calibration_target instrument8 star1)
        (calibration_target instrument6 star1)
        (calibration_target instrument1 star0)
        (calibration_target instrument12 star2)
        (calibration_target instrument10 star2)
        (calibration_target instrument4 star0)
        (calibration_target instrument14 star1)
        (calibration_target instrument7 star1)
        (calibration_target instrument15 star2)
        (calibration_target instrument2 star2)
        (calibration_target instrument16 star0)
        (calibration_target instrument17 star1)
        (calibration_target instrument13 star2)
        (calibration_target instrument5 star0)
        (calibration_target instrument11 star0)
        (calibration_target instrument9 star1)
        (calibration_target instrument3 star1)
        (on_board instrument3 satellite1)
        (on_board instrument16 satellite6)
        (on_board instrument13 satellite5)
        (on_board instrument14 satellite5)
        (on_board instrument8 satellite3)
        (on_board instrument2 satellite0)
        (on_board instrument6 satellite2)
        (on_board instrument7 satellite2)
        (on_board instrument15 satellite6)
        (on_board instrument10 satellite4)
        (on_board instrument5 satellite2)
        (on_board instrument4 satellite1)
        (on_board instrument17 satellite6)
        (on_board instrument11 satellite4)
        (on_board instrument1 satellite0)
        (on_board instrument12 satellite4)
        (on_board instrument9 satellite3)
        (on_board instrument0 satellite0)
        (power_avail satellite6)
        (power_avail satellite5)
        (power_avail satellite3)
        (power_avail satellite2)
        (power_avail satellite1)
        (power_avail satellite0)
        (pointing satellite3 star3)
        (pointing satellite5 planet33)
        (pointing satellite0 star50)
        (pointing satellite2 planet14)
        (pointing satellite1 planet17)
        (pointing satellite4 phenomenon36)
        (pointing satellite6 star0)
        (mode image1)
        (mode spectrograph2)
        (mode infrared0)
        (direction star0)
        (direction phenomenon18)
        (direction planet46)
        (direction phenomenon7)
        (direction star12)
        (direction planet15)
        (direction phenomenon11)
        (direction star24)
        (direction planet33)
        (direction phenomenon38)
        (direction planet48)
        (direction phenomenon34)
        (direction phenomenon36)
        (direction star10)
        (direction star4)
        (direction star47)
        (direction planet19)
        (direction planet43)
        (direction star3)
        (direction star39)
        (direction phenomenon28)
        (direction phenomenon5)
        (direction planet17)
        (direction star29)
        (direction phenomenon32)
        (direction star22)
        (direction star37)
        (direction phenomenon8)
        (direction star13)
        (direction star25)
        (direction star16)
        (direction star26)
        (direction star9)
        (direction star21)
        (direction planet41)
        (direction star27)
        (direction planet51)
        (direction planet20)
        (direction star2)
        (direction phenomenon6)
        (direction planet35)
        (direction planet42)
        (direction star52)
        (direction star1)
        (direction phenomenon40)
        (direction star50)
        (direction star45)
        (direction star23)
        (direction planet31)
        (direction phenomenon30)
        (direction star49)
        (direction planet14)
        (direction phenomenon44)
        (power_on instrument10)
        (calibrated instrument10)
        (have_image phenomenon18 image1)
        (have_image phenomenon32 image1)
        (have_image phenomenon36 infrared0)
        (have_image phenomenon28 spectrograph2)
        (have_image phenomenon11 spectrograph2)
        (have_image phenomenon30 image1)
        (have_image phenomenon34 infrared0)
    )

    (:goal
        (and (satellite satellite6) (satellite satellite5) (satellite satellite3) (satellite satellite2) (satellite satellite4) (satellite satellite1) (satellite satellite0) (instrument instrument6) (instrument instrument7) (instrument instrument2) (instrument instrument1) (instrument instrument3) (instrument instrument5) (instrument instrument13) (instrument instrument15) (instrument instrument17) (instrument instrument0) (instrument instrument8) (instrument instrument10) (instrument instrument4) (instrument instrument9) (instrument instrument12) (instrument instrument11) (instrument instrument16) (instrument instrument14) (supports instrument13 image1) (supports instrument1 image1) (supports instrument3 infrared0) (supports instrument0 image1) (supports instrument6 spectrograph2) (supports instrument14 spectrograph2) (supports instrument17 infrared0) (supports instrument16 infrared0) (supports instrument5 infrared0) (supports instrument15 infrared0) (supports instrument16 image1) (supports instrument12 infrared0) (supports instrument8 image1) (supports instrument5 image1) (supports instrument6 infrared0) (supports instrument14 infrared0) (supports instrument4 spectrograph2) (supports instrument6 image1) (supports instrument11 spectrograph2) (supports instrument10 spectrograph2) (supports instrument9 infrared0) (supports instrument8 spectrograph2) (supports instrument7 spectrograph2) (supports instrument13 spectrograph2) (supports instrument11 infrared0) (supports instrument10 infrared0) (supports instrument2 infrared0) (supports instrument11 image1) (supports instrument10 image1) (supports instrument2 image1) (supports instrument16 spectrograph2) (supports instrument7 infrared0) (supports instrument13 infrared0) (supports instrument12 spectrograph2) (supports instrument1 infrared0) (calibration_target instrument0 star2) (calibration_target instrument6 star1) (calibration_target instrument8 star1) (calibration_target instrument1 star0) (calibration_target instrument12 star2) (calibration_target instrument10 star2) (calibration_target instrument4 star0) (calibration_target instrument14 star1) (calibration_target instrument7 star1) (calibration_target instrument15 star2) (calibration_target instrument2 star2) (calibration_target instrument16 star0) (calibration_target instrument17 star1) (calibration_target instrument5 star0) (calibration_target instrument11 star0) (calibration_target instrument9 star1) (calibration_target instrument13 star2) (calibration_target instrument3 star1) (on_board instrument3 satellite1) (on_board instrument16 satellite6) (on_board instrument13 satellite5) (on_board instrument14 satellite5) (on_board instrument8 satellite3) (on_board instrument2 satellite0) (on_board instrument6 satellite2) (on_board instrument7 satellite2) (on_board instrument15 satellite6) (on_board instrument9 satellite3) (on_board instrument1 satellite0) (on_board instrument5 satellite2) (on_board instrument4 satellite1) (on_board instrument11 satellite4) (on_board instrument17 satellite6) (on_board instrument12 satellite4) (on_board instrument10 satellite4) (on_board instrument0 satellite0) (power_avail satellite6) (power_avail satellite5) (power_avail satellite3) (power_avail satellite2) (power_avail satellite1) (power_avail satellite0) (pointing satellite3 star3) (pointing satellite5 planet33) (pointing satellite0 star50) (pointing satellite4 phenomenon40) (pointing satellite2 planet14) (pointing satellite1 planet17) (pointing satellite6 star0) (mode image1) (mode spectrograph2) (mode infrared0) (direction star0) (direction phenomenon18) (direction planet46) (direction phenomenon7) (direction star12) (direction planet15) (direction phenomenon11) (direction star24) (direction planet33) (direction phenomenon38) (direction planet48) (direction phenomenon34) (direction phenomenon36) (direction star10) (direction star47) (direction star4) (direction planet19) (direction planet43) (direction star3) (direction star39) (direction phenomenon28) (direction phenomenon5) (direction planet17) (direction star29) (direction phenomenon32) (direction star22) (direction star37) (direction phenomenon8) (direction star13) (direction star25) (direction star16) (direction star26) (direction star9) (direction star21) (direction planet41) (direction star27) (direction planet51) (direction planet20) (direction star2) (direction phenomenon6) (direction planet35) (direction planet42) (direction star52) (direction star1) (direction phenomenon40) (direction star50) (direction star45) (direction star23) (direction planet31) (direction phenomenon30) (direction star49) (direction planet14) (direction phenomenon44) (power_on instrument10) (calibrated instrument10) (have_image phenomenon18 image1) (have_image phenomenon32 image1) (have_image phenomenon36 infrared0) (have_image phenomenon28 spectrograph2) (have_image phenomenon11 spectrograph2) (have_image phenomenon30 image1) (have_image phenomenon34 infrared0))
    )

    
    
    
)

