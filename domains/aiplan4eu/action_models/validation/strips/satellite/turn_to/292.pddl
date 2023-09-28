
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-sat-x-1)
    (:domain satellite)

    (:objects
        groundstation1 infrared0 infrared1 instrument0 instrument1 instrument10 instrument11 instrument12 instrument13 instrument14 instrument2 instrument3 instrument4 instrument5 instrument6 instrument7 instrument8 instrument9 phenomenon13 phenomenon14 phenomenon15 phenomenon20 phenomenon26 phenomenon33 phenomenon34 phenomenon43 phenomenon45 phenomenon46 phenomenon47 phenomenon51 phenomenon52 phenomenon55 phenomenon57 phenomenon60 phenomenon61 phenomenon62 phenomenon69 phenomenon72 phenomenon8 phenomenon9 planet10 planet11 planet12 planet16 planet18 planet19 planet21 planet24 planet25 planet28 planet29 planet3 planet32 planet36 planet39 planet41 planet42 planet44 planet48 planet49 planet5 planet50 planet56 planet63 planet64 planet67 planet68 planet71 satellite0 satellite1 satellite2 satellite3 satellite4 satellite5 satellite6 star0 star17 star2 star22 star23 star27 star30 star31 star35 star37 star38 star4 star40 star53 star54 star58 star59 star6 star65 star66 star7 star70 thermograph2 - object
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
        (instrument instrument0)
        (instrument instrument8)
        (instrument instrument10)
        (instrument instrument4)
        (instrument instrument9)
        (instrument instrument12)
        (instrument instrument11)
        (instrument instrument14)
        (supports instrument0 infrared0)
        (supports instrument11 thermograph2)
        (supports instrument2 thermograph2)
        (supports instrument8 thermograph2)
        (supports instrument4 infrared1)
        (supports instrument11 infrared1)
        (supports instrument1 thermograph2)
        (supports instrument10 infrared1)
        (supports instrument7 thermograph2)
        (supports instrument13 thermograph2)
        (supports instrument0 thermograph2)
        (supports instrument2 infrared1)
        (supports instrument5 infrared0)
        (supports instrument12 infrared0)
        (supports instrument8 infrared1)
        (supports instrument3 thermograph2)
        (supports instrument1 infrared1)
        (supports instrument6 infrared0)
        (supports instrument0 infrared1)
        (supports instrument14 infrared0)
        (supports instrument3 infrared1)
        (supports instrument5 thermograph2)
        (supports instrument9 infrared0)
        (supports instrument6 thermograph2)
        (supports instrument5 infrared1)
        (supports instrument14 thermograph2)
        (supports instrument6 infrared1)
        (supports instrument11 infrared0)
        (supports instrument10 infrared0)
        (supports instrument9 thermograph2)
        (supports instrument2 infrared0)
        (supports instrument14 infrared1)
        (supports instrument8 infrared0)
        (supports instrument9 infrared1)
        (supports instrument1 infrared0)
        (calibration_target instrument14 groundstation1)
        (calibration_target instrument4 star2)
        (calibration_target instrument0 star2)
        (calibration_target instrument5 star2)
        (calibration_target instrument1 star0)
        (calibration_target instrument7 groundstation1)
        (calibration_target instrument11 groundstation1)
        (calibration_target instrument12 groundstation1)
        (calibration_target instrument10 star0)
        (calibration_target instrument13 star2)
        (calibration_target instrument9 star0)
        (calibration_target instrument3 star0)
        (calibration_target instrument2 star0)
        (calibration_target instrument6 groundstation1)
        (calibration_target instrument8 star0)
        (on_board instrument3 satellite1)
        (on_board instrument13 satellite6)
        (on_board instrument12 satellite6)
        (on_board instrument6 satellite3)
        (on_board instrument2 satellite1)
        (on_board instrument8 satellite4)
        (on_board instrument7 satellite3)
        (on_board instrument11 satellite5)
        (on_board instrument4 satellite2)
        (on_board instrument5 satellite2)
        (on_board instrument9 satellite5)
        (on_board instrument10 satellite5)
        (on_board instrument1 satellite0)
        (on_board instrument14 satellite6)
        (on_board instrument0 satellite0)
        (power_avail satellite6)
        (power_avail satellite3)
        (power_avail satellite2)
        (power_avail satellite4)
        (power_avail satellite1)
        (power_avail satellite0)
        (pointing satellite2 star17)
        (pointing satellite1 groundstation1)
        (pointing satellite5 phenomenon72)
        (pointing satellite4 planet24)
        (pointing satellite0 planet29)
        (pointing satellite6 planet68)
        (pointing satellite3 phenomenon8)
        (mode infrared1)
        (mode thermograph2)
        (mode infrared0)
        (direction phenomenon43)
        (direction phenomenon45)
        (direction star6)
        (direction planet36)
        (direction planet67)
        (direction star0)
        (direction phenomenon62)
        (direction planet24)
        (direction phenomenon55)
        (direction planet48)
        (direction phenomenon61)
        (direction phenomenon15)
        (direction phenomenon34)
        (direction phenomenon57)
        (direction star4)
        (direction phenomenon20)
        (direction star17)
        (direction planet19)
        (direction planet12)
        (direction planet71)
        (direction star30)
        (direction planet10)
        (direction phenomenon69)
        (direction planet49)
        (direction star7)
        (direction planet39)
        (direction phenomenon47)
        (direction star38)
        (direction phenomenon26)
        (direction planet44)
        (direction star22)
        (direction star31)
        (direction phenomenon8)
        (direction star37)
        (direction phenomenon52)
        (direction star40)
        (direction phenomenon33)
        (direction phenomenon13)
        (direction star54)
        (direction planet25)
        (direction planet11)
        (direction star27)
        (direction planet41)
        (direction star65)
        (direction phenomenon9)
        (direction planet5)
        (direction planet56)
        (direction planet64)
        (direction star58)
        (direction star2)
        (direction phenomenon51)
        (direction planet16)
        (direction star53)
        (direction planet42)
        (direction groundstation1)
        (direction phenomenon46)
        (direction planet68)
        (direction planet3)
        (direction star59)
        (direction star70)
        (direction star23)
        (direction planet21)
        (direction planet32)
        (direction star35)
        (direction planet28)
        (direction planet50)
        (direction phenomenon60)
        (direction planet29)
        (direction star66)
        (direction phenomenon72)
        (direction planet18)
        (direction planet63)
        (direction phenomenon14)
        (power_on instrument11)
        (calibrated instrument11)
        (have_image phenomenon69 infrared0)
        (have_image phenomenon51 thermograph2)
        (have_image phenomenon52 infrared1)
        (have_image phenomenon33 infrared0)
        (have_image phenomenon55 thermograph2)
        (have_image phenomenon14 infrared0)
        (have_image phenomenon57 thermograph2)
        (have_image phenomenon47 infrared0)
        (have_image phenomenon61 thermograph2)
        (have_image phenomenon20 infrared1)
        (have_image phenomenon60 infrared0)
        (have_image phenomenon34 infrared1)
        (have_image phenomenon43 thermograph2)
        (have_image phenomenon62 infrared0)
        (have_image phenomenon45 thermograph2)
        (have_image phenomenon15 infrared0)
        (have_image phenomenon26 thermograph2)
        (have_image phenomenon46 infrared0)
        (have_image phenomenon72 infrared0)
    )

    (:goal
        (and (satellite satellite6) (satellite satellite5) (satellite satellite3) (satellite satellite2) (satellite satellite4) (satellite satellite1) (satellite satellite0) (instrument instrument6) (instrument instrument7) (instrument instrument2) (instrument instrument1) (instrument instrument3) (instrument instrument5) (instrument instrument13) (instrument instrument0) (instrument instrument8) (instrument instrument10) (instrument instrument4) (instrument instrument9) (instrument instrument12) (instrument instrument11) (instrument instrument14) (supports instrument0 infrared0) (supports instrument11 thermograph2) (supports instrument2 thermograph2) (supports instrument8 thermograph2) (supports instrument4 infrared1) (supports instrument11 infrared1) (supports instrument1 thermograph2) (supports instrument7 thermograph2) (supports instrument10 infrared1) (supports instrument13 thermograph2) (supports instrument0 thermograph2) (supports instrument2 infrared1) (supports instrument5 infrared0) (supports instrument12 infrared0) (supports instrument8 infrared1) (supports instrument3 thermograph2) (supports instrument1 infrared1) (supports instrument6 infrared0) (supports instrument0 infrared1) (supports instrument14 infrared0) (supports instrument3 infrared1) (supports instrument5 thermograph2) (supports instrument9 infrared0) (supports instrument6 thermograph2) (supports instrument5 infrared1) (supports instrument14 thermograph2) (supports instrument6 infrared1) (supports instrument11 infrared0) (supports instrument10 infrared0) (supports instrument9 thermograph2) (supports instrument2 infrared0) (supports instrument14 infrared1) (supports instrument8 infrared0) (supports instrument9 infrared1) (supports instrument1 infrared0) (calibration_target instrument14 groundstation1) (calibration_target instrument0 star2) (calibration_target instrument4 star2) (calibration_target instrument5 star2) (calibration_target instrument1 star0) (calibration_target instrument6 groundstation1) (calibration_target instrument11 groundstation1) (calibration_target instrument2 star0) (calibration_target instrument12 groundstation1) (calibration_target instrument10 star0) (calibration_target instrument9 star0) (calibration_target instrument3 star0) (calibration_target instrument13 star2) (calibration_target instrument7 groundstation1) (calibration_target instrument8 star0) (on_board instrument3 satellite1) (on_board instrument13 satellite6) (on_board instrument12 satellite6) (on_board instrument6 satellite3) (on_board instrument2 satellite1) (on_board instrument8 satellite4) (on_board instrument7 satellite3) (on_board instrument11 satellite5) (on_board instrument4 satellite2) (on_board instrument5 satellite2) (on_board instrument9 satellite5) (on_board instrument10 satellite5) (on_board instrument1 satellite0) (on_board instrument14 satellite6) (on_board instrument0 satellite0) (power_avail satellite6) (power_avail satellite3) (power_avail satellite2) (power_avail satellite4) (power_avail satellite1) (power_avail satellite0) (pointing satellite2 star17) (pointing satellite5 phenomenon69) (pointing satellite1 groundstation1) (pointing satellite4 planet24) (pointing satellite0 planet29) (pointing satellite6 planet68) (pointing satellite3 phenomenon8) (mode infrared1) (mode thermograph2) (mode infrared0) (direction phenomenon43) (direction star6) (direction planet36) (direction planet67) (direction star0) (direction phenomenon62) (direction planet24) (direction phenomenon55) (direction planet48) (direction phenomenon61) (direction phenomenon15) (direction phenomenon34) (direction phenomenon57) (direction star4) (direction phenomenon20) (direction planet12) (direction planet19) (direction star17) (direction planet71) (direction planet18) (direction phenomenon14) (direction star30) (direction planet10) (direction phenomenon69) (direction planet49) (direction star7) (direction planet39) (direction phenomenon47) (direction star38) (direction phenomenon26) (direction planet44) (direction star22) (direction star31) (direction phenomenon8) (direction star37) (direction phenomenon52) (direction phenomenon33) (direction phenomenon13) (direction star54) (direction planet25) (direction planet11) (direction star27) (direction planet41) (direction star65) (direction phenomenon9) (direction planet5) (direction planet56) (direction planet64) (direction star58) (direction star2) (direction phenomenon51) (direction planet16) (direction star53) (direction planet42) (direction groundstation1) (direction phenomenon46) (direction planet68) (direction planet3) (direction star59) (direction star70) (direction star23) (direction planet21) (direction planet32) (direction star35) (direction planet28) (direction planet50) (direction phenomenon60) (direction planet29) (direction star66) (direction phenomenon72) (direction phenomenon45) (direction planet63) (direction star40) (power_on instrument11) (calibrated instrument11) (have_image phenomenon69 infrared0) (have_image phenomenon51 thermograph2) (have_image phenomenon52 infrared1) (have_image phenomenon33 infrared0) (have_image phenomenon55 thermograph2) (have_image phenomenon14 infrared0) (have_image phenomenon57 thermograph2) (have_image phenomenon47 infrared0) (have_image phenomenon61 thermograph2) (have_image phenomenon20 infrared1) (have_image phenomenon60 infrared0) (have_image phenomenon34 infrared1) (have_image phenomenon43 thermograph2) (have_image phenomenon62 infrared0) (have_image phenomenon45 thermograph2) (have_image phenomenon15 infrared0) (have_image phenomenon26 thermograph2) (have_image phenomenon46 infrared0) (have_image phenomenon72 infrared0))
    )

    
    
    
)

