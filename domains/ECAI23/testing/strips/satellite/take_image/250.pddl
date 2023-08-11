
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
        (satellite satellite4)
        (satellite satellite3)
        (satellite satellite2)
        (satellite satellite5)
        (satellite satellite0)
        (satellite satellite6)
        (satellite satellite1)
        (satellite satellite7)
        (instrument instrument7)
        (instrument instrument15)
        (instrument instrument4)
        (instrument instrument6)
        (instrument instrument11)
        (instrument instrument3)
        (instrument instrument10)
        (instrument instrument13)
        (instrument instrument2)
        (instrument instrument14)
        (instrument instrument1)
        (instrument instrument12)
        (instrument instrument16)
        (instrument instrument8)
        (instrument instrument5)
        (instrument instrument9)
        (instrument instrument0)
        (supports instrument7 image2)
        (supports instrument16 thermograph0)
        (supports instrument10 thermograph0)
        (supports instrument14 spectrograph1)
        (supports instrument0 image2)
        (supports instrument8 image2)
        (supports instrument1 thermograph0)
        (supports instrument4 spectrograph1)
        (supports instrument11 thermograph0)
        (supports instrument5 spectrograph1)
        (supports instrument3 image2)
        (supports instrument7 spectrograph1)
        (supports instrument10 image2)
        (supports instrument13 spectrograph1)
        (supports instrument16 image2)
        (supports instrument9 thermograph0)
        (supports instrument14 thermograph0)
        (supports instrument1 image2)
        (supports instrument11 image2)
        (supports instrument2 image2)
        (supports instrument0 spectrograph1)
        (supports instrument15 thermograph0)
        (supports instrument4 thermograph0)
        (supports instrument8 spectrograph1)
        (supports instrument12 image2)
        (supports instrument5 thermograph0)
        (supports instrument3 spectrograph1)
        (supports instrument6 thermograph0)
        (supports instrument7 thermograph0)
        (supports instrument16 spectrograph1)
        (supports instrument9 image2)
        (supports instrument14 image2)
        (supports instrument10 spectrograph1)
        (supports instrument15 image2)
        (supports instrument4 image2)
        (supports instrument1 spectrograph1)
        (supports instrument0 thermograph0)
        (supports instrument2 spectrograph1)
        (supports instrument5 image2)
        (supports instrument8 thermograph0)
        (supports instrument11 spectrograph1)
        (supports instrument3 thermograph0)
        (supports instrument6 image2)
        (calibration_target instrument8 groundstation0)
        (calibration_target instrument9 groundstation2)
        (calibration_target instrument11 groundstation1)
        (calibration_target instrument2 groundstation1)
        (calibration_target instrument3 groundstation2)
        (calibration_target instrument13 groundstation1)
        (calibration_target instrument12 groundstation1)
        (calibration_target instrument6 groundstation2)
        (calibration_target instrument14 groundstation2)
        (calibration_target instrument7 groundstation0)
        (calibration_target instrument15 groundstation2)
        (calibration_target instrument1 groundstation0)
        (calibration_target instrument5 groundstation1)
        (calibration_target instrument4 groundstation1)
        (calibration_target instrument16 groundstation2)
        (calibration_target instrument0 groundstation2)
        (calibration_target instrument10 groundstation2)
        (on_board instrument15 satellite7)
        (on_board instrument6 satellite3)
        (on_board instrument16 satellite7)
        (on_board instrument0 satellite0)
        (on_board instrument10 satellite4)
        (on_board instrument1 satellite1)
        (on_board instrument11 satellite5)
        (on_board instrument13 satellite6)
        (on_board instrument14 satellite6)
        (on_board instrument2 satellite1)
        (on_board instrument4 satellite2)
        (on_board instrument3 satellite1)
        (on_board instrument8 satellite4)
        (on_board instrument12 satellite6)
        (on_board instrument5 satellite2)
        (on_board instrument9 satellite4)
        (on_board instrument7 satellite3)
        (power_avail satellite4)
        (power_avail satellite3)
        (power_avail satellite2)
        (power_avail satellite5)
        (power_avail satellite0)
        (power_avail satellite6)
        (power_avail satellite1)
        (pointing satellite5 planet27)
        (pointing satellite0 star44)
        (pointing satellite1 planet36)
        (pointing satellite4 planet27)
        (pointing satellite7 star59)
        (pointing satellite6 phenomenon22)
        (pointing satellite3 phenomenon15)
        (pointing satellite2 planet39)
        (mode spectrograph1)
        (mode image2)
        (mode thermograph0)
        (direction phenomenon29)
        (direction planet63)
        (direction star34)
        (direction phenomenon8)
        (direction star20)
        (direction planet66)
        (direction phenomenon15)
        (direction phenomenon5)
        (direction planet67)
        (direction phenomenon13)
        (direction planet16)
        (direction star19)
        (direction star4)
        (direction planet9)
        (direction planet27)
        (direction star45)
        (direction star24)
        (direction phenomenon6)
        (direction phenomenon55)
        (direction phenomenon40)
        (direction star59)
        (direction planet68)
        (direction star17)
        (direction star25)
        (direction phenomenon43)
        (direction star14)
        (direction planet53)
        (direction groundstation2)
        (direction planet61)
        (direction phenomenon33)
        (direction star21)
        (direction planet35)
        (direction star64)
        (direction planet57)
        (direction star12)
        (direction planet32)
        (direction phenomenon49)
        (direction star48)
        (direction planet51)
        (direction star54)
        (direction phenomenon58)
        (direction planet30)
        (direction star7)
        (direction phenomenon28)
        (direction planet72)
        (direction star52)
        (direction star47)
        (direction planet31)
        (direction groundstation0)
        (direction star23)
        (direction phenomenon10)
        (direction star37)
        (direction phenomenon26)
        (direction planet60)
        (direction star38)
        (direction star44)
        (direction star65)
        (direction phenomenon71)
        (direction star11)
        (direction planet62)
        (direction phenomenon22)
        (direction star3)
        (direction planet36)
        (direction star41)
        (direction phenomenon42)
        (direction star46)
        (direction groundstation1)
        (direction planet39)
        (direction star50)
        (direction star69)
        (direction planet18)
        (direction star56)
        (direction phenomenon70)
        (power_on instrument16)
        (calibrated instrument16)
        (have_image phenomenon10 thermograph0)
        (have_image phenomenon42 spectrograph1)
        (have_image star46 thermograph0)
        (have_image planet53 thermograph0)
        (have_image planet57 thermograph0)
        (have_image planet39 image2)
        (have_image phenomenon49 image2)
        (have_image planet32 thermograph0)
        (have_image phenomenon71 spectrograph1)
        (have_image star54 image2)
        (have_image phenomenon5 image2)
        (have_image star19 thermograph0)
        (have_image planet60 thermograph0)
        (have_image star11 spectrograph1)
        (have_image phenomenon55 thermograph0)
        (have_image phenomenon70 spectrograph1)
        (have_image planet66 thermograph0)
        (have_image star20 thermograph0)
        (have_image phenomenon8 image2)
        (have_image star12 spectrograph1)
        (have_image star38 spectrograph1)
        (have_image star41 thermograph0)
        (have_image star24 thermograph0)
        (have_image phenomenon43 thermograph0)
        (have_image planet18 image2)
        (have_image star45 image2)
        (have_image phenomenon6 image2)
        (have_image star23 image2)
        (have_image planet27 spectrograph1)
        (have_image phenomenon26 spectrograph1)
        (have_image star14 image2)
        (have_image planet31 thermograph0)
        (have_image planet62 thermograph0)
        (have_image star25 thermograph0)
        (have_image star37 spectrograph1)
        (have_image star17 spectrograph1)
        (have_image star48 thermograph0)
        (have_image phenomenon33 spectrograph1)
        (have_image planet16 image2)
        (have_image star3 thermograph0)
        (have_image phenomenon13 thermograph0)
        (have_image phenomenon22 spectrograph1)
        (have_image planet36 thermograph0)
        (have_image planet9 spectrograph1)
        (have_image planet51 spectrograph1)
        (have_image planet63 image2)
        (have_image star47 image2)
        (have_image star34 thermograph0)
        (have_image planet72 image2)
        (have_image planet35 image2)
        (have_image planet61 thermograph0)
        (have_image phenomenon15 spectrograph1)
        (have_image planet67 image2)
        (have_image star44 thermograph0)
        (have_image planet68 thermograph0)
    )

    (:goal
        (and (satellite satellite4) (satellite satellite3) (satellite satellite2) (satellite satellite5) (satellite satellite0) (satellite satellite6) (satellite satellite1) (satellite satellite7) (instrument instrument7) (instrument instrument15) (instrument instrument4) (instrument instrument6) (instrument instrument11) (instrument instrument3) (instrument instrument0) (instrument instrument10) (instrument instrument13) (instrument instrument2) (instrument instrument14) (instrument instrument1) (instrument instrument12) (instrument instrument16) (instrument instrument8) (instrument instrument5) (instrument instrument9) (supports instrument7 image2) (supports instrument16 thermograph0) (supports instrument10 thermograph0) (supports instrument14 spectrograph1) (supports instrument0 image2) (supports instrument8 image2) (supports instrument1 thermograph0) (supports instrument4 spectrograph1) (supports instrument11 thermograph0) (supports instrument5 spectrograph1) (supports instrument3 image2) (supports instrument7 spectrograph1) (supports instrument10 image2) (supports instrument13 spectrograph1) (supports instrument16 image2) (supports instrument9 thermograph0) (supports instrument14 thermograph0) (supports instrument1 image2) (supports instrument11 image2) (supports instrument2 image2) (supports instrument0 spectrograph1) (supports instrument15 thermograph0) (supports instrument4 thermograph0) (supports instrument8 spectrograph1) (supports instrument12 image2) (supports instrument5 thermograph0) (supports instrument3 spectrograph1) (supports instrument6 thermograph0) (supports instrument7 thermograph0) (supports instrument16 spectrograph1) (supports instrument9 image2) (supports instrument14 image2) (supports instrument10 spectrograph1) (supports instrument15 image2) (supports instrument4 image2) (supports instrument1 spectrograph1) (supports instrument0 thermograph0) (supports instrument2 spectrograph1) (supports instrument5 image2) (supports instrument8 thermograph0) (supports instrument11 spectrograph1) (supports instrument3 thermograph0) (supports instrument6 image2) (calibration_target instrument8 groundstation0) (calibration_target instrument9 groundstation2) (calibration_target instrument11 groundstation1) (calibration_target instrument2 groundstation1) (calibration_target instrument3 groundstation2) (calibration_target instrument13 groundstation1) (calibration_target instrument12 groundstation1) (calibration_target instrument6 groundstation2) (calibration_target instrument14 groundstation2) (calibration_target instrument7 groundstation0) (calibration_target instrument15 groundstation2) (calibration_target instrument1 groundstation0) (calibration_target instrument5 groundstation1) (calibration_target instrument4 groundstation1) (calibration_target instrument16 groundstation2) (calibration_target instrument0 groundstation2) (calibration_target instrument10 groundstation2) (on_board instrument15 satellite7) (on_board instrument6 satellite3) (on_board instrument16 satellite7) (on_board instrument0 satellite0) (on_board instrument10 satellite4) (on_board instrument1 satellite1) (on_board instrument11 satellite5) (on_board instrument13 satellite6) (on_board instrument14 satellite6) (on_board instrument2 satellite1) (on_board instrument4 satellite2) (on_board instrument3 satellite1) (on_board instrument8 satellite4) (on_board instrument12 satellite6) (on_board instrument5 satellite2) (on_board instrument9 satellite4) (on_board instrument7 satellite3) (power_avail satellite4) (power_avail satellite3) (power_avail satellite2) (power_avail satellite5) (power_avail satellite0) (power_avail satellite6) (power_avail satellite1) (pointing satellite5 planet27) (pointing satellite0 star44) (pointing satellite4 planet27) (pointing satellite1 planet36) (pointing satellite7 star59) (pointing satellite6 phenomenon22) (pointing satellite3 phenomenon15) (pointing satellite2 planet39) (mode spectrograph1) (mode image2) (mode thermograph0) (direction phenomenon29) (direction planet63) (direction star34) (direction phenomenon8) (direction star20) (direction planet66) (direction phenomenon15) (direction phenomenon5) (direction planet67) (direction phenomenon13) (direction planet16) (direction star19) (direction star4) (direction planet27) (direction planet9) (direction star45) (direction star24) (direction phenomenon6) (direction phenomenon55) (direction phenomenon40) (direction star59) (direction planet68) (direction star17) (direction star25) (direction phenomenon43) (direction star14) (direction planet53) (direction groundstation2) (direction planet61) (direction phenomenon33) (direction star21) (direction planet35) (direction star64) (direction planet57) (direction star12) (direction planet32) (direction phenomenon49) (direction star48) (direction planet51) (direction star54) (direction phenomenon58) (direction planet30) (direction star7) (direction phenomenon28) (direction planet72) (direction star52) (direction star47) (direction planet31) (direction groundstation0) (direction star23) (direction phenomenon10) (direction star37) (direction phenomenon26) (direction planet60) (direction star38) (direction star44) (direction star65) (direction phenomenon71) (direction star11) (direction planet62) (direction phenomenon22) (direction star3) (direction planet36) (direction star41) (direction phenomenon42) (direction star46) (direction groundstation1) (direction planet39) (direction star50) (direction star69) (direction planet18) (direction star56) (direction phenomenon70) (power_on instrument16) (calibrated instrument16) (have_image phenomenon10 thermograph0) (have_image phenomenon42 spectrograph1) (have_image star46 thermograph0) (have_image planet53 thermograph0) (have_image planet57 thermograph0) (have_image planet39 image2) (have_image star59 thermograph0) (have_image phenomenon49 image2) (have_image planet32 thermograph0) (have_image phenomenon71 spectrograph1) (have_image star54 image2) (have_image phenomenon5 image2) (have_image star19 thermograph0) (have_image planet60 thermograph0) (have_image star11 spectrograph1) (have_image phenomenon55 thermograph0) (have_image phenomenon70 spectrograph1) (have_image planet66 thermograph0) (have_image star20 thermograph0) (have_image phenomenon8 image2) (have_image star12 spectrograph1) (have_image star38 spectrograph1) (have_image star41 thermograph0) (have_image star24 thermograph0) (have_image phenomenon43 thermograph0) (have_image planet18 image2) (have_image star45 image2) (have_image phenomenon6 image2) (have_image star23 image2) (have_image planet27 spectrograph1) (have_image phenomenon26 spectrograph1) (have_image star14 image2) (have_image planet31 thermograph0) (have_image planet62 thermograph0) (have_image star25 thermograph0) (have_image star37 spectrograph1) (have_image star17 spectrograph1) (have_image star48 thermograph0) (have_image phenomenon33 spectrograph1) (have_image planet16 image2) (have_image star3 thermograph0) (have_image phenomenon13 thermograph0) (have_image phenomenon22 spectrograph1) (have_image planet36 thermograph0) (have_image planet9 spectrograph1) (have_image planet51 spectrograph1) (have_image planet63 image2) (have_image star47 image2) (have_image star34 thermograph0) (have_image planet72 image2) (have_image planet35 image2) (have_image planet61 thermograph0) (have_image phenomenon15 spectrograph1) (have_image star44 thermograph0) (have_image planet67 image2) (have_image planet68 thermograph0))
    )

    
    
    
)

