
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-sat-x-1)
    (:domain satellite)

    (:objects
        groundstation0 groundstation1 groundstation2 image2 instrument0 instrument1 instrument10 instrument11 instrument12 instrument13 instrument14 instrument15 instrument16 instrument2 instrument3 instrument4 instrument5 instrument6 instrument7 instrument8 instrument9 phenomenon10 phenomenon13 phenomenon15 phenomenon22 phenomenon26 phenomenon28 phenomenon29 phenomenon33 phenomenon40 phenomenon42 phenomenon43 phenomenon49 phenomenon5 phenomenon55 phenomenon58 phenomenon6 phenomenon70 phenomenon71 phenomenon8 planet16 planet18 planet27 planet30 planet31 planet32 planet35 planet36 planet39 planet51 planet53 planet57 planet60 planet61 planet62 planet63 planet66 planet67 planet68 planet72 planet9 satellite0 satellite1 satellite2 satellite3 satellite4 satellite5 satellite6 satellite7 spectrograph1 star11 star12 star14 star17 star19 star20 star21 star23 star24 star25 star3 star34 star37 star38 star4 star41 star44 star45 star46 star47 star48 star50 star52 star54 star56 star59 star64 star65 star69 star7 thermograph0 - object
    )

    (:init
        (satellite satellite6)
        (satellite satellite5)
        (satellite satellite7)
        (satellite satellite3)
        (satellite satellite2)
        (satellite satellite4)
        (satellite satellite1)
        (satellite satellite0)
        (instrument instrument6)
        (instrument instrument7)
        (instrument instrument2)
        (instrument instrument1)
        (instrument instrument3)
        (instrument instrument5)
        (instrument instrument13)
        (instrument instrument15)
        (instrument instrument0)
        (instrument instrument8)
        (instrument instrument10)
        (instrument instrument4)
        (instrument instrument9)
        (instrument instrument12)
        (instrument instrument11)
        (instrument instrument16)
        (instrument instrument14)
        (supports instrument10 thermograph0)
        (supports instrument16 spectrograph1)
        (supports instrument8 image2)
        (supports instrument7 image2)
        (supports instrument5 spectrograph1)
        (supports instrument1 image2)
        (supports instrument0 image2)
        (supports instrument7 thermograph0)
        (supports instrument8 thermograph0)
        (supports instrument3 image2)
        (supports instrument1 thermograph0)
        (supports instrument14 spectrograph1)
        (supports instrument0 thermograph0)
        (supports instrument3 thermograph0)
        (supports instrument5 image2)
        (supports instrument16 image2)
        (supports instrument12 image2)
        (supports instrument15 image2)
        (supports instrument5 thermograph0)
        (supports instrument6 image2)
        (supports instrument15 thermograph0)
        (supports instrument16 thermograph0)
        (supports instrument4 spectrograph1)
        (supports instrument14 image2)
        (supports instrument11 spectrograph1)
        (supports instrument6 thermograph0)
        (supports instrument10 spectrograph1)
        (supports instrument2 spectrograph1)
        (supports instrument9 image2)
        (supports instrument14 thermograph0)
        (supports instrument8 spectrograph1)
        (supports instrument7 spectrograph1)
        (supports instrument13 spectrograph1)
        (supports instrument9 thermograph0)
        (supports instrument1 spectrograph1)
        (supports instrument0 spectrograph1)
        (supports instrument4 image2)
        (supports instrument11 image2)
        (supports instrument3 spectrograph1)
        (supports instrument10 image2)
        (supports instrument4 thermograph0)
        (supports instrument11 thermograph0)
        (supports instrument2 image2)
        (calibration_target instrument6 groundstation2)
        (calibration_target instrument13 groundstation1)
        (calibration_target instrument4 groundstation1)
        (calibration_target instrument11 groundstation1)
        (calibration_target instrument9 groundstation2)
        (calibration_target instrument12 groundstation1)
        (calibration_target instrument14 groundstation2)
        (calibration_target instrument16 groundstation2)
        (calibration_target instrument5 groundstation1)
        (calibration_target instrument8 groundstation0)
        (calibration_target instrument0 groundstation2)
        (calibration_target instrument15 groundstation2)
        (calibration_target instrument7 groundstation0)
        (calibration_target instrument2 groundstation1)
        (calibration_target instrument10 groundstation2)
        (calibration_target instrument3 groundstation2)
        (calibration_target instrument1 groundstation0)
        (on_board instrument3 satellite1)
        (on_board instrument13 satellite6)
        (on_board instrument12 satellite6)
        (on_board instrument6 satellite3)
        (on_board instrument2 satellite1)
        (on_board instrument8 satellite4)
        (on_board instrument16 satellite7)
        (on_board instrument7 satellite3)
        (on_board instrument11 satellite5)
        (on_board instrument15 satellite7)
        (on_board instrument4 satellite2)
        (on_board instrument1 satellite1)
        (on_board instrument5 satellite2)
        (on_board instrument9 satellite4)
        (on_board instrument14 satellite6)
        (on_board instrument10 satellite4)
        (on_board instrument0 satellite0)
        (power_avail satellite6)
        (power_avail satellite5)
        (power_avail satellite3)
        (power_avail satellite2)
        (power_avail satellite4)
        (power_avail satellite1)
        (power_avail satellite0)
        (pointing satellite5 planet27)
        (pointing satellite1 planet36)
        (pointing satellite7 phenomenon5)
        (pointing satellite6 phenomenon22)
        (pointing satellite3 phenomenon15)
        (pointing satellite4 planet27)
        (pointing satellite2 planet39)
        (pointing satellite0 star44)
        (mode thermograph0)
        (mode image2)
        (mode spectrograph1)
        (direction phenomenon43)
        (direction planet36)
        (direction star48)
        (direction planet67)
        (direction planet27)
        (direction star41)
        (direction star46)
        (direction planet53)
        (direction phenomenon55)
        (direction star12)
        (direction planet66)
        (direction star24)
        (direction phenomenon15)
        (direction phenomenon22)
        (direction phenomenon71)
        (direction star47)
        (direction star4)
        (direction star20)
        (direction star17)
        (direction planet62)
        (direction star69)
        (direction phenomenon29)
        (direction planet18)
        (direction star3)
        (direction phenomenon70)
        (direction star14)
        (direction phenomenon28)
        (direction star7)
        (direction planet39)
        (direction phenomenon5)
        (direction star38)
        (direction phenomenon26)
        (direction star37)
        (direction phenomenon8)
        (direction star11)
        (direction star25)
        (direction star34)
        (direction planet60)
        (direction star56)
        (direction phenomenon33)
        (direction planet9)
        (direction phenomenon13)
        (direction phenomenon10)
        (direction star21)
        (direction star54)
        (direction groundstation2)
        (direction star65)
        (direction planet51)
        (direction groundstation0)
        (direction star19)
        (direction star44)
        (direction phenomenon6)
        (direction planet16)
        (direction planet35)
        (direction star52)
        (direction groundstation1)
        (direction star64)
        (direction planet68)
        (direction planet72)
        (direction phenomenon40)
        (direction planet30)
        (direction star45)
        (direction star23)
        (direction star50)
        (direction planet32)
        (direction phenomenon58)
        (direction star59)
        (direction planet61)
        (direction planet31)
        (direction phenomenon49)
        (direction phenomenon42)
        (direction planet63)
        (direction planet57)
        (power_on instrument16)
        (calibrated instrument16)
        (have_image phenomenon49 image2)
        (have_image phenomenon5 image2)
        (have_image phenomenon15 spectrograph1)
        (have_image phenomenon26 spectrograph1)
        (have_image phenomenon13 thermograph0)
        (have_image phenomenon10 thermograph0)
        (have_image phenomenon43 thermograph0)
        (have_image phenomenon22 spectrograph1)
        (have_image phenomenon33 spectrograph1)
        (have_image phenomenon42 spectrograph1)
    )

    (:goal
        (and (satellite satellite6) (satellite satellite5) (satellite satellite7) (satellite satellite3) (satellite satellite2) (satellite satellite4) (satellite satellite1) (satellite satellite0) (instrument instrument6) (instrument instrument7) (instrument instrument3) (instrument instrument1) (instrument instrument2) (instrument instrument5) (instrument instrument13) (instrument instrument15) (instrument instrument0) (instrument instrument8) (instrument instrument10) (instrument instrument4) (instrument instrument9) (instrument instrument12) (instrument instrument11) (instrument instrument16) (instrument instrument14) (supports instrument10 thermograph0) (supports instrument16 spectrograph1) (supports instrument8 image2) (supports instrument7 image2) (supports instrument5 spectrograph1) (supports instrument1 image2) (supports instrument0 image2) (supports instrument7 thermograph0) (supports instrument8 thermograph0) (supports instrument3 image2) (supports instrument1 thermograph0) (supports instrument14 spectrograph1) (supports instrument0 thermograph0) (supports instrument3 thermograph0) (supports instrument5 image2) (supports instrument16 image2) (supports instrument12 image2) (supports instrument15 image2) (supports instrument5 thermograph0) (supports instrument6 image2) (supports instrument15 thermograph0) (supports instrument16 thermograph0) (supports instrument4 spectrograph1) (supports instrument14 image2) (supports instrument11 spectrograph1) (supports instrument6 thermograph0) (supports instrument10 spectrograph1) (supports instrument2 spectrograph1) (supports instrument9 image2) (supports instrument14 thermograph0) (supports instrument8 spectrograph1) (supports instrument7 spectrograph1) (supports instrument13 spectrograph1) (supports instrument9 thermograph0) (supports instrument1 spectrograph1) (supports instrument0 spectrograph1) (supports instrument4 image2) (supports instrument11 image2) (supports instrument3 spectrograph1) (supports instrument10 image2) (supports instrument4 thermograph0) (supports instrument11 thermograph0) (supports instrument2 image2) (calibration_target instrument6 groundstation2) (calibration_target instrument13 groundstation1) (calibration_target instrument10 groundstation2) (calibration_target instrument4 groundstation1) (calibration_target instrument11 groundstation1) (calibration_target instrument12 groundstation1) (calibration_target instrument14 groundstation2) (calibration_target instrument16 groundstation2) (calibration_target instrument5 groundstation1) (calibration_target instrument8 groundstation0) (calibration_target instrument0 groundstation2) (calibration_target instrument15 groundstation2) (calibration_target instrument7 groundstation0) (calibration_target instrument2 groundstation1) (calibration_target instrument9 groundstation2) (calibration_target instrument3 groundstation2) (calibration_target instrument1 groundstation0) (on_board instrument3 satellite1) (on_board instrument13 satellite6) (on_board instrument12 satellite6) (on_board instrument6 satellite3) (on_board instrument2 satellite1) (on_board instrument8 satellite4) (on_board instrument16 satellite7) (on_board instrument7 satellite3) (on_board instrument11 satellite5) (on_board instrument15 satellite7) (on_board instrument4 satellite2) (on_board instrument1 satellite1) (on_board instrument5 satellite2) (on_board instrument10 satellite4) (on_board instrument14 satellite6) (on_board instrument9 satellite4) (on_board instrument0 satellite0) (power_avail satellite6) (power_avail satellite5) (power_avail satellite3) (power_avail satellite2) (power_avail satellite4) (power_avail satellite1) (power_avail satellite0) (pointing satellite5 planet27) (pointing satellite7 phenomenon22) (pointing satellite1 planet36) (pointing satellite6 phenomenon22) (pointing satellite3 phenomenon15) (pointing satellite4 planet27) (pointing satellite2 planet39) (pointing satellite0 star44) (mode thermograph0) (mode image2) (mode spectrograph1) (direction phenomenon43) (direction planet36) (direction star48) (direction planet67) (direction planet27) (direction star41) (direction star46) (direction planet53) (direction phenomenon55) (direction star12) (direction planet66) (direction star24) (direction phenomenon15) (direction phenomenon22) (direction phenomenon71) (direction star4) (direction star47) (direction star20) (direction star17) (direction planet62) (direction star69) (direction phenomenon42) (direction phenomenon29) (direction star3) (direction phenomenon70) (direction star14) (direction phenomenon28) (direction star7) (direction planet39) (direction phenomenon5) (direction star38) (direction phenomenon26) (direction star37) (direction phenomenon8) (direction star11) (direction star25) (direction star34) (direction planet60) (direction star56) (direction phenomenon33) (direction planet9) (direction phenomenon13) (direction phenomenon10) (direction star21) (direction star54) (direction groundstation2) (direction star65) (direction planet51) (direction groundstation0) (direction star19) (direction star44) (direction phenomenon6) (direction planet16) (direction planet35) (direction star52) (direction groundstation1) (direction star64) (direction planet68) (direction planet72) (direction phenomenon40) (direction planet30) (direction star45) (direction star23) (direction star50) (direction planet32) (direction phenomenon58) (direction star59) (direction planet61) (direction planet31) (direction phenomenon49) (direction planet18) (direction planet63) (direction planet57) (power_on instrument16) (calibrated instrument16) (have_image phenomenon49 image2) (have_image phenomenon15 spectrograph1) (have_image phenomenon33 spectrograph1) (have_image phenomenon26 spectrograph1) (have_image phenomenon13 thermograph0) (have_image phenomenon10 thermograph0) (have_image phenomenon43 thermograph0) (have_image phenomenon22 spectrograph1) (have_image phenomenon5 image2) (have_image phenomenon42 spectrograph1))
    )

    
    
    
)

