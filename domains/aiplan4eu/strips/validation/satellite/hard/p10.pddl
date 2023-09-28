;; satellites=65, instruments=95, modes=6, directions=58, out_folder=testing/hard, instance_id=10, seed=1016

(define (problem satellite-10)
 (:domain satellite)
 (:objects 
    sat1 sat2 sat3 sat4 sat5 sat6 sat7 sat8 sat9 sat10 sat11 sat12 sat13 sat14 sat15 sat16 sat17 sat18 sat19 sat20 sat21 sat22 sat23 sat24 sat25 sat26 sat27 sat28 sat29 sat30 sat31 sat32 sat33 sat34 sat35 sat36 sat37 sat38 sat39 sat40 sat41 sat42 sat43 sat44 sat45 sat46 sat47 sat48 sat49 sat50 sat51 sat52 sat53 sat54 sat55 sat56 sat57 sat58 sat59 sat60 sat61 sat62 sat63 sat64 sat65 - satellite
    ins1 ins2 ins3 ins4 ins5 ins6 ins7 ins8 ins9 ins10 ins11 ins12 ins13 ins14 ins15 ins16 ins17 ins18 ins19 ins20 ins21 ins22 ins23 ins24 ins25 ins26 ins27 ins28 ins29 ins30 ins31 ins32 ins33 ins34 ins35 ins36 ins37 ins38 ins39 ins40 ins41 ins42 ins43 ins44 ins45 ins46 ins47 ins48 ins49 ins50 ins51 ins52 ins53 ins54 ins55 ins56 ins57 ins58 ins59 ins60 ins61 ins62 ins63 ins64 ins65 ins66 ins67 ins68 ins69 ins70 ins71 ins72 ins73 ins74 ins75 ins76 ins77 ins78 ins79 ins80 ins81 ins82 ins83 ins84 ins85 ins86 ins87 ins88 ins89 ins90 ins91 ins92 ins93 ins94 ins95 - instrument
    mod1 mod2 mod3 mod4 mod5 mod6 - mode
    dir1 dir2 dir3 dir4 dir5 dir6 dir7 dir8 dir9 dir10 dir11 dir12 dir13 dir14 dir15 dir16 dir17 dir18 dir19 dir20 dir21 dir22 dir23 dir24 dir25 dir26 dir27 dir28 dir29 dir30 dir31 dir32 dir33 dir34 dir35 dir36 dir37 dir38 dir39 dir40 dir41 dir42 dir43 dir44 dir45 dir46 dir47 dir48 dir49 dir50 dir51 dir52 dir53 dir54 dir55 dir56 dir57 dir58 - direction
    )
 (:init 
    (pointing sat1 dir24)
    (pointing sat2 dir47)
    (pointing sat3 dir25)
    (pointing sat4 dir35)
    (pointing sat5 dir23)
    (pointing sat6 dir47)
    (pointing sat7 dir36)
    (pointing sat8 dir11)
    (pointing sat9 dir42)
    (pointing sat10 dir43)
    (pointing sat11 dir42)
    (pointing sat12 dir5)
    (pointing sat13 dir23)
    (pointing sat14 dir57)
    (pointing sat15 dir32)
    (pointing sat16 dir3)
    (pointing sat17 dir30)
    (pointing sat18 dir34)
    (pointing sat19 dir49)
    (pointing sat20 dir31)
    (pointing sat21 dir38)
    (pointing sat22 dir33)
    (pointing sat23 dir26)
    (pointing sat24 dir40)
    (pointing sat25 dir11)
    (pointing sat26 dir37)
    (pointing sat27 dir32)
    (pointing sat28 dir12)
    (pointing sat29 dir7)
    (pointing sat30 dir38)
    (pointing sat31 dir18)
    (pointing sat32 dir21)
    (pointing sat33 dir22)
    (pointing sat34 dir24)
    (pointing sat35 dir24)
    (pointing sat36 dir57)
    (pointing sat37 dir55)
    (pointing sat38 dir22)
    (pointing sat39 dir23)
    (pointing sat40 dir19)
    (pointing sat41 dir16)
    (pointing sat42 dir40)
    (pointing sat43 dir23)
    (pointing sat44 dir53)
    (pointing sat45 dir18)
    (pointing sat46 dir48)
    (pointing sat47 dir2)
    (pointing sat48 dir42)
    (pointing sat49 dir30)
    (pointing sat50 dir12)
    (pointing sat51 dir14)
    (pointing sat52 dir15)
    (pointing sat53 dir17)
    (pointing sat54 dir38)
    (pointing sat55 dir22)
    (pointing sat56 dir23)
    (pointing sat57 dir24)
    (pointing sat58 dir49)
    (pointing sat59 dir33)
    (pointing sat60 dir9)
    (pointing sat61 dir20)
    (pointing sat62 dir22)
    (pointing sat63 dir23)
    (pointing sat64 dir52)
    (pointing sat65 dir44)
    (power_avail sat1)
    (power_avail sat2)
    (power_avail sat3)
    (power_avail sat4)
    (power_avail sat5)
    (power_avail sat6)
    (power_avail sat7)
    (power_avail sat8)
    (power_avail sat9)
    (power_avail sat10)
    (power_avail sat11)
    (power_avail sat12)
    (power_avail sat13)
    (power_avail sat14)
    (power_avail sat15)
    (power_avail sat16)
    (power_avail sat17)
    (power_avail sat18)
    (power_avail sat19)
    (power_avail sat20)
    (power_avail sat21)
    (power_avail sat22)
    (power_avail sat23)
    (power_avail sat24)
    (power_avail sat25)
    (power_avail sat26)
    (power_avail sat27)
    (power_avail sat28)
    (power_avail sat29)
    (power_avail sat30)
    (power_avail sat31)
    (power_avail sat32)
    (power_avail sat33)
    (power_avail sat34)
    (power_avail sat35)
    (power_avail sat36)
    (power_avail sat37)
    (power_avail sat38)
    (power_avail sat39)
    (power_avail sat40)
    (power_avail sat41)
    (power_avail sat42)
    (power_avail sat43)
    (power_avail sat44)
    (power_avail sat45)
    (power_avail sat46)
    (power_avail sat47)
    (power_avail sat48)
    (power_avail sat49)
    (power_avail sat50)
    (power_avail sat51)
    (power_avail sat52)
    (power_avail sat53)
    (power_avail sat54)
    (power_avail sat55)
    (power_avail sat56)
    (power_avail sat57)
    (power_avail sat58)
    (power_avail sat59)
    (power_avail sat60)
    (power_avail sat61)
    (power_avail sat62)
    (power_avail sat63)
    (power_avail sat64)
    (power_avail sat65)
    (calibration_target ins1 dir25)
    (calibration_target ins2 dir6)
    (calibration_target ins3 dir56)
    (calibration_target ins4 dir13)
    (calibration_target ins5 dir35)
    (calibration_target ins6 dir49)
    (calibration_target ins7 dir55)
    (calibration_target ins8 dir29)
    (calibration_target ins9 dir38)
    (calibration_target ins10 dir16)
    (calibration_target ins11 dir49)
    (calibration_target ins12 dir12)
    (calibration_target ins13 dir13)
    (calibration_target ins14 dir20)
    (calibration_target ins15 dir37)
    (calibration_target ins16 dir20)
    (calibration_target ins17 dir6)
    (calibration_target ins18 dir57)
    (calibration_target ins19 dir5)
    (calibration_target ins20 dir20)
    (calibration_target ins21 dir51)
    (calibration_target ins22 dir25)
    (calibration_target ins23 dir24)
    (calibration_target ins24 dir34)
    (calibration_target ins25 dir29)
    (calibration_target ins26 dir28)
    (calibration_target ins27 dir15)
    (calibration_target ins28 dir11)
    (calibration_target ins29 dir56)
    (calibration_target ins30 dir11)
    (calibration_target ins31 dir31)
    (calibration_target ins32 dir11)
    (calibration_target ins33 dir43)
    (calibration_target ins34 dir48)
    (calibration_target ins35 dir26)
    (calibration_target ins36 dir2)
    (calibration_target ins37 dir42)
    (calibration_target ins38 dir58)
    (calibration_target ins39 dir45)
    (calibration_target ins40 dir26)
    (calibration_target ins41 dir15)
    (calibration_target ins42 dir15)
    (calibration_target ins43 dir31)
    (calibration_target ins44 dir41)
    (calibration_target ins45 dir52)
    (calibration_target ins46 dir1)
    (calibration_target ins47 dir6)
    (calibration_target ins48 dir58)
    (calibration_target ins49 dir30)
    (calibration_target ins50 dir38)
    (calibration_target ins51 dir51)
    (calibration_target ins52 dir26)
    (calibration_target ins53 dir31)
    (calibration_target ins54 dir22)
    (calibration_target ins55 dir43)
    (calibration_target ins56 dir3)
    (calibration_target ins57 dir50)
    (calibration_target ins58 dir27)
    (calibration_target ins59 dir56)
    (calibration_target ins60 dir20)
    (calibration_target ins61 dir32)
    (calibration_target ins62 dir28)
    (calibration_target ins63 dir46)
    (calibration_target ins64 dir56)
    (calibration_target ins65 dir12)
    (calibration_target ins66 dir47)
    (calibration_target ins67 dir3)
    (calibration_target ins68 dir49)
    (calibration_target ins69 dir55)
    (calibration_target ins70 dir16)
    (calibration_target ins71 dir31)
    (calibration_target ins72 dir56)
    (calibration_target ins73 dir33)
    (calibration_target ins74 dir52)
    (calibration_target ins75 dir14)
    (calibration_target ins76 dir46)
    (calibration_target ins77 dir21)
    (calibration_target ins78 dir15)
    (calibration_target ins79 dir18)
    (calibration_target ins80 dir3)
    (calibration_target ins81 dir45)
    (calibration_target ins82 dir32)
    (calibration_target ins83 dir49)
    (calibration_target ins84 dir40)
    (calibration_target ins85 dir30)
    (calibration_target ins86 dir12)
    (calibration_target ins87 dir9)
    (calibration_target ins88 dir34)
    (calibration_target ins89 dir33)
    (calibration_target ins90 dir39)
    (calibration_target ins91 dir38)
    (calibration_target ins92 dir42)
    (calibration_target ins93 dir32)
    (calibration_target ins94 dir53)
    (calibration_target ins95 dir16)
    (on_board ins1 sat22)
    (on_board ins2 sat14)
    (on_board ins3 sat45)
    (on_board ins4 sat57)
    (on_board ins5 sat10)
    (on_board ins6 sat27)
    (on_board ins7 sat24)
    (on_board ins8 sat56)
    (on_board ins9 sat2)
    (on_board ins10 sat38)
    (on_board ins11 sat25)
    (on_board ins12 sat1)
    (on_board ins13 sat15)
    (on_board ins14 sat37)
    (on_board ins15 sat65)
    (on_board ins16 sat54)
    (on_board ins17 sat47)
    (on_board ins18 sat5)
    (on_board ins19 sat3)
    (on_board ins20 sat39)
    (on_board ins21 sat29)
    (on_board ins22 sat48)
    (on_board ins23 sat17)
    (on_board ins24 sat63)
    (on_board ins25 sat40)
    (on_board ins26 sat26)
    (on_board ins27 sat59)
    (on_board ins28 sat43)
    (on_board ins29 sat46)
    (on_board ins30 sat36)
    (on_board ins31 sat50)
    (on_board ins32 sat52)
    (on_board ins33 sat16)
    (on_board ins34 sat6)
    (on_board ins35 sat64)
    (on_board ins36 sat51)
    (on_board ins37 sat49)
    (on_board ins38 sat33)
    (on_board ins39 sat35)
    (on_board ins40 sat21)
    (on_board ins41 sat18)
    (on_board ins42 sat30)
    (on_board ins43 sat58)
    (on_board ins44 sat20)
    (on_board ins45 sat9)
    (on_board ins46 sat32)
    (on_board ins47 sat19)
    (on_board ins48 sat41)
    (on_board ins49 sat23)
    (on_board ins50 sat31)
    (on_board ins51 sat13)
    (on_board ins52 sat4)
    (on_board ins53 sat60)
    (on_board ins54 sat12)
    (on_board ins55 sat42)
    (on_board ins56 sat34)
    (on_board ins57 sat61)
    (on_board ins58 sat53)
    (on_board ins59 sat62)
    (on_board ins60 sat55)
    (on_board ins61 sat44)
    (on_board ins62 sat28)
    (on_board ins63 sat7)
    (on_board ins64 sat11)
    (on_board ins65 sat8)
    (on_board ins66 sat51)
    (on_board ins67 sat45)
    (on_board ins68 sat31)
    (on_board ins69 sat2)
    (on_board ins70 sat1)
    (on_board ins71 sat2)
    (on_board ins72 sat35)
    (on_board ins73 sat65)
    (on_board ins74 sat20)
    (on_board ins75 sat3)
    (on_board ins76 sat49)
    (on_board ins77 sat28)
    (on_board ins78 sat7)
    (on_board ins79 sat25)
    (on_board ins80 sat30)
    (on_board ins81 sat3)
    (on_board ins82 sat58)
    (on_board ins83 sat57)
    (on_board ins84 sat36)
    (on_board ins85 sat7)
    (on_board ins86 sat13)
    (on_board ins87 sat5)
    (on_board ins88 sat38)
    (on_board ins89 sat62)
    (on_board ins90 sat63)
    (on_board ins91 sat50)
    (on_board ins92 sat52)
    (on_board ins93 sat2)
    (on_board ins94 sat10)
    (on_board ins95 sat62)
    (supports ins4 mod1)
    (supports ins78 mod1)
    (supports ins64 mod6)
    (supports ins90 mod2)
    (supports ins85 mod5)
    (supports ins65 mod1)
    (supports ins52 mod2)
    (supports ins68 mod4)
    (supports ins59 mod2)
    (supports ins2 mod3)
    (supports ins72 mod3)
    (supports ins17 mod1)
    (supports ins89 mod2)
    (supports ins29 mod2)
    (supports ins59 mod6)
    (supports ins9 mod4)
    (supports ins58 mod3)
    (supports ins14 mod3)
    (supports ins28 mod6)
    (supports ins31 mod3)
    (supports ins40 mod1)
    (supports ins17 mod4)
    (supports ins92 mod3)
    (supports ins1 mod3)
    (supports ins91 mod1)
    (supports ins44 mod6)
    (supports ins33 mod3)
    (supports ins47 mod6)
    (supports ins35 mod6)
    (supports ins47 mod2)
    (supports ins77 mod4)
    (supports ins2 mod6)
    (supports ins28 mod2)
    (supports ins38 mod6)
    (supports ins21 mod3)
    (supports ins55 mod1)
    (supports ins69 mod5)
    (supports ins81 mod2)
    (supports ins70 mod1)
    (supports ins22 mod3)
    (supports ins28 mod3)
    (supports ins22 mod2)
    (supports ins77 mod1)
    (supports ins34 mod5)
    (supports ins53 mod6)
    (supports ins43 mod1)
    (supports ins25 mod6)
    (supports ins45 mod4)
    (supports ins81 mod4)
    (supports ins15 mod2)
    (supports ins11 mod1)
    (supports ins91 mod4)
    (supports ins63 mod3)
    (supports ins30 mod3)
    (supports ins44 mod3)
    (supports ins41 mod3)
    (supports ins72 mod2)
    (supports ins93 mod6)
    (supports ins29 mod1)
    (supports ins50 mod5)
    (supports ins26 mod2)
    (supports ins49 mod4)
    (supports ins43 mod5)
    (supports ins9 mod2)
    (supports ins82 mod3)
    (supports ins95 mod3)
    (supports ins60 mod1)
    (supports ins89 mod3)
    (supports ins32 mod1)
    (supports ins87 mod6)
    (supports ins45 mod5)
    (supports ins6 mod1)
    (supports ins53 mod4)
    (supports ins9 mod1)
    (supports ins8 mod4)
    (supports ins89 mod1)
    (supports ins68 mod3)
    (supports ins35 mod5)
    (supports ins33 mod1)
    (supports ins88 mod3)
    (supports ins10 mod6)
    (supports ins20 mod2)
    (supports ins3 mod5)
    (supports ins70 mod4)
    (supports ins50 mod6)
    (supports ins33 mod2)
    (supports ins63 mod2)
    (supports ins85 mod2)
    (supports ins78 mod3)
    (supports ins29 mod6)
    (supports ins66 mod2)
    (supports ins80 mod6)
    (supports ins63 mod6)
    (supports ins10 mod2)
    (supports ins57 mod3)
    (supports ins93 mod5)
    (supports ins7 mod1)
    (supports ins79 mod1)
    (supports ins94 mod3)
    (supports ins87 mod4)
    (supports ins46 mod2)
    (supports ins29 mod4)
    (supports ins22 mod1)
    (supports ins36 mod4)
    (supports ins42 mod5)
    (supports ins28 mod4)
    (supports ins54 mod4)
    (supports ins10 mod1)
    (supports ins87 mod3)
    (supports ins36 mod6)
    (supports ins53 mod3)
    (supports ins28 mod1)
    (supports ins66 mod6)
    (supports ins84 mod2)
    (supports ins83 mod2)
    (supports ins4 mod3)
    (supports ins77 mod6)
    (supports ins16 mod6)
    (supports ins12 mod6)
    (supports ins74 mod2)
    (supports ins92 mod6)
    (supports ins48 mod4)
    (supports ins94 mod6)
    (supports ins52 mod5)
    (supports ins50 mod1)
    (supports ins42 mod1)
    (supports ins71 mod4)
    (supports ins75 mod4)
    (supports ins88 mod1)
    (supports ins84 mod5)
    (supports ins73 mod4)
    (supports ins8 mod5)
    (supports ins19 mod1)
    (supports ins47 mod4)
    (supports ins33 mod4)
    (supports ins55 mod3)
    (supports ins14 mod2)
    (supports ins18 mod2)
    (supports ins95 mod2)
    (supports ins49 mod1)
    (supports ins3 mod2)
    (supports ins65 mod6)
    (supports ins3 mod1)
    (supports ins45 mod2)
    (supports ins1 mod4)
    (supports ins54 mod3)
    (supports ins52 mod3)
    (supports ins34 mod1)
    (supports ins58 mod2)
    (supports ins8 mod2)
    (supports ins23 mod4)
    (supports ins57 mod6)
    (supports ins30 mod2)
    (supports ins92 mod2)
    (supports ins5 mod3)
    (supports ins25 mod3)
    (supports ins29 mod3)
    (supports ins59 mod1)
    (supports ins15 mod6)
    (supports ins91 mod5)
    (supports ins38 mod1)
    (supports ins39 mod1)
    (supports ins1 mod6)
    (supports ins56 mod5)
    (supports ins23 mod6)
    (supports ins66 mod1)
    (supports ins52 mod1)
    (supports ins92 mod1)
    (supports ins83 mod4)
    (supports ins57 mod1)
    (supports ins2 mod2)
    (supports ins41 mod1)
    (supports ins43 mod6)
    (supports ins30 mod6)
    (supports ins66 mod5)
    (supports ins89 mod4)
    (supports ins13 mod2)
    (supports ins64 mod3)
    (supports ins16 mod4)
    (supports ins49 mod5)
    (supports ins84 mod6)
    (supports ins54 mod1)
    (supports ins32 mod6)
    (supports ins2 mod5)
    (supports ins63 mod5)
    (supports ins61 mod5)
    (supports ins24 mod6)
    (supports ins45 mod6)
    (supports ins67 mod2)
    (supports ins60 mod5)
    (supports ins80 mod3)
    (supports ins47 mod3)
    (supports ins34 mod4)
    (supports ins71 mod3)
    (supports ins84 mod3)
    (supports ins67 mod6)
    (supports ins60 mod2)
    (supports ins52 mod4)
    (supports ins76 mod3)
    (supports ins39 mod2)
    (supports ins41 mod2)
    (supports ins30 mod1)
    (supports ins26 mod6)
    (supports ins93 mod3)
    (supports ins19 mod6)
    (supports ins41 mod5)
    (supports ins82 mod4)
    (supports ins87 mod5)
    (supports ins86 mod5)
    (supports ins89 mod5)
    (supports ins42 mod6)
    (supports ins52 mod6)
    (supports ins43 mod4)
    (supports ins20 mod4)
    (supports ins37 mod5)
    (supports ins24 mod3)
    (supports ins17 mod3)
    (supports ins43 mod3)
    (supports ins56 mod2)
    (supports ins11 mod2)
    (supports ins94 mod1)
    (supports ins37 mod2)
    (supports ins24 mod1)
    (supports ins71 mod6)
    (supports ins3 mod3)
    (supports ins67 mod3)
    (supports ins59 mod4)
    (supports ins62 mod4)
    (supports ins46 mod5)
    (supports ins25 mod4)
    (supports ins60 mod4)
    (supports ins70 mod5)
    (supports ins46 mod3)
    (supports ins4 mod5)
    (supports ins70 mod3)
    (supports ins79 mod4)
    (supports ins46 mod1)
    (supports ins85 mod6)
    (supports ins25 mod5)
    (supports ins10 mod5)
    (supports ins68 mod5)
    (supports ins43 mod2)
    (supports ins41 mod6)
    (supports ins7 mod4)
    (supports ins64 mod4)
    (supports ins56 mod1)
    (supports ins39 mod6)
    (supports ins82 mod5)
    (supports ins94 mod5)
    (supports ins91 mod6)
    (supports ins51 mod3)
    (supports ins44 mod1)
    (supports ins58 mod6)
    (supports ins38 mod2)
    (supports ins20 mod6)
    (supports ins75 mod5)
    (supports ins38 mod3)
    (supports ins47 mod5)
    (supports ins69 mod1)
    (supports ins63 mod1)
    (supports ins34 mod2)
    (supports ins61 mod1)
    (supports ins62 mod5)
    (supports ins22 mod6)
    (supports ins24 mod2)
    (supports ins86 mod3)
    (supports ins32 mod3)
    (supports ins83 mod3)
    (supports ins54 mod2)
    (supports ins72 mod1)
    (supports ins25 mod1)
    (supports ins37 mod4)
    (supports ins90 mod1)
    (supports ins33 mod5)
    (supports ins62 mod2)
    (supports ins37 mod1)
    (supports ins86 mod2)
    (supports ins79 mod2)
    (supports ins30 mod5)
    (supports ins62 mod3)
    (supports ins40 mod5)
    (supports ins78 mod2)
    (supports ins88 mod4)
    (supports ins77 mod5)
    (supports ins15 mod4)
    (supports ins49 mod6)
    (supports ins74 mod6)
    (supports ins18 mod1)
    (supports ins19 mod2)
    (supports ins58 mod4)
    (supports ins13 mod3)
    (supports ins15 mod3)
    (supports ins80 mod2)
    (supports ins24 mod5)
    (supports ins93 mod2)
    (supports ins40 mod6)
    (supports ins8 mod3)
    (supports ins85 mod1)
    (supports ins79 mod6)
    (supports ins27 mod6))
 (:goal  (and (pointing sat1 dir37)
   (pointing sat2 dir10)
   (pointing sat4 dir51)
   (pointing sat6 dir31)
   (pointing sat7 dir1)
   (pointing sat8 dir30)
   (pointing sat9 dir12)
   (pointing sat10 dir4)
   (pointing sat15 dir22)
   (pointing sat17 dir49)
   (pointing sat21 dir36)
   (pointing sat22 dir50)
   (pointing sat23 dir29)
   (pointing sat24 dir4)
   (pointing sat25 dir26)
   (pointing sat27 dir54)
   (pointing sat29 dir29)
   (pointing sat30 dir28)
   (pointing sat31 dir12)
   (pointing sat34 dir9)
   (pointing sat36 dir4)
   (pointing sat39 dir31)
   (pointing sat40 dir9)
   (pointing sat43 dir42)
   (pointing sat45 dir44)
   (pointing sat46 dir38)
   (pointing sat47 dir3)
   (pointing sat49 dir55)
   (pointing sat50 dir55)
   (pointing sat51 dir7)
   (pointing sat54 dir4)
   (pointing sat55 dir8)
   (pointing sat58 dir42)
   (pointing sat60 dir16)
   (pointing sat61 dir12)
   (pointing sat63 dir30)
   (pointing sat64 dir31)
   (have_image dir35 mod3)
   (have_image dir22 mod3)
   (have_image dir26 mod5)
   (have_image dir6 mod1)
   (have_image dir19 mod6)
   (have_image dir13 mod3)
   (have_image dir15 mod2)
   (have_image dir48 mod2)
   (have_image dir51 mod6)
   (have_image dir33 mod3)
   (have_image dir27 mod5)
   (have_image dir8 mod4)
   (have_image dir29 mod3)
   (have_image dir39 mod3)
   (have_image dir38 mod1)
   (have_image dir39 mod5)
   (have_image dir56 mod4)
   (have_image dir20 mod4)
   (have_image dir3 mod2)
   (have_image dir30 mod5)
   (have_image dir34 mod2)
   (have_image dir26 mod3)
   (have_image dir42 mod2)
   (have_image dir24 mod5)
   (have_image dir28 mod6)
   (have_image dir43 mod1)
   (have_image dir50 mod3)
   (have_image dir41 mod2)
   (have_image dir3 mod5)
   (have_image dir19 mod5)
   (have_image dir54 mod3)
   (have_image dir39 mod6)
   (have_image dir21 mod5)
   (have_image dir4 mod4)
   (have_image dir9 mod4)
   (have_image dir55 mod2)
   (have_image dir27 mod2)
   (have_image dir34 mod5)
   (have_image dir42 mod3)
   (have_image dir21 mod1)
   (have_image dir56 mod5)
   (have_image dir45 mod2)
   (have_image dir1 mod4)
   (have_image dir26 mod4)
   (have_image dir14 mod3)
   (have_image dir13 mod4)
   (have_image dir44 mod3)
   (have_image dir54 mod6)
   (have_image dir49 mod6)
   (have_image dir14 mod2)
   (have_image dir27 mod3)
   (have_image dir37 mod3)
   (have_image dir16 mod3)
   (have_image dir2 mod3)
   (have_image dir1 mod1)
   (have_image dir56 mod2)
   (have_image dir41 mod3)
   (have_image dir21 mod4)
   (have_image dir6 mod5)
   (have_image dir43 mod2)
   (have_image dir41 mod5)
   (have_image dir17 mod4)
   (have_image dir15 mod5)
   (have_image dir18 mod2)
   (have_image dir4 mod6)
   (have_image dir31 mod5)
   (have_image dir51 mod3)
   (have_image dir1 mod5)
   (have_image dir45 mod3)
   (have_image dir37 mod6)
   (have_image dir28 mod4)
   (have_image dir48 mod6)
   (have_image dir18 mod5)
   (have_image dir38 mod6)
   (have_image dir5 mod3)
   (have_image dir51 mod1)
   (have_image dir23 mod4)
   (have_image dir14 mod4)
   (have_image dir48 mod4)
   (have_image dir37 mod4)
   (have_image dir25 mod6)
   (have_image dir48 mod5)
   (have_image dir45 mod4)
   (have_image dir12 mod3)
   (have_image dir8 mod3)
   (have_image dir54 mod2)
   (have_image dir11 mod4)
   (have_image dir29 mod5)
   (have_image dir13 mod5)
   (have_image dir16 mod5)
   (have_image dir4 mod2)
   (have_image dir3 mod6)
   (have_image dir42 mod5)
   (have_image dir46 mod5)
   (have_image dir23 mod3)
   (have_image dir47 mod6)
   (have_image dir49 mod1)
   (have_image dir7 mod4)
   (have_image dir44 mod5)
   (have_image dir40 mod3)
   (have_image dir16 mod2)
   (have_image dir31 mod3)
   (have_image dir34 mod1)
   (have_image dir30 mod6)
   (have_image dir47 mod2)
   (have_image dir39 mod2)
   (have_image dir43 mod6)
   (have_image dir58 mod1)
   (have_image dir58 mod5)
   (have_image dir17 mod2)
   (have_image dir44 mod1)
   (have_image dir12 mod5)
   (have_image dir15 mod1)
   (have_image dir44 mod2)
   (have_image dir19 mod3)
   (have_image dir49 mod2)
   (have_image dir29 mod1)
   (have_image dir33 mod1)
   (have_image dir6 mod4)
   (have_image dir42 mod4)
   (have_image dir43 mod3)
   (have_image dir40 mod5)
   (have_image dir11 mod2)
   (have_image dir5 mod1)
   (have_image dir18 mod6)
   (have_image dir35 mod6)
   (have_image dir33 mod2)
   (have_image dir13 mod1)
   (have_image dir15 mod4)
   (have_image dir32 mod2)
   (have_image dir37 mod2)
   (have_image dir37 mod1)
   (have_image dir53 mod3)
   (have_image dir32 mod6)
   (have_image dir24 mod2)
   (have_image dir35 mod2)
   (have_image dir50 mod4)
   (have_image dir56 mod6)
   (have_image dir17 mod5)
   (have_image dir50 mod5)
   (have_image dir2 mod4)
   (have_image dir47 mod4)
   (have_image dir10 mod3)
   (have_image dir19 mod2)
   (have_image dir54 mod4)
   (have_image dir52 mod2)
   (have_image dir57 mod2)
   (have_image dir20 mod2)
   (have_image dir17 mod3)
   (have_image dir13 mod6)
   (have_image dir57 mod4)
   (have_image dir36 mod3)
   (have_image dir4 mod5)
   (have_image dir4 mod1)
   (have_image dir23 mod5)
   (have_image dir28 mod5)
   (have_image dir24 mod6)
   (have_image dir55 mod6)
   (have_image dir42 mod6)
   (have_image dir50 mod6)
   (have_image dir49 mod5)
   (have_image dir14 mod5)
   (have_image dir7 mod6)
   (have_image dir14 mod6)
   (have_image dir28 mod3)
   (have_image dir16 mod6)
   (have_image dir22 mod6)
   (have_image dir52 mod6)
   (have_image dir11 mod3)
   (have_image dir12 mod4)
   (have_image dir27 mod1)
   (have_image dir55 mod5)
   (have_image dir55 mod4)
   (have_image dir36 mod4)
   (have_image dir42 mod1)
   (have_image dir3 mod4)
   (have_image dir53 mod5)
   (have_image dir47 mod5)
   (have_image dir5 mod2)
   (have_image dir44 mod4)
   (have_image dir39 mod4)
   (have_image dir43 mod5)
   (have_image dir7 mod1)
   (have_image dir6 mod6)
   (have_image dir29 mod2)
   (have_image dir19 mod1)
   (have_image dir55 mod3)
   (have_image dir15 mod6)
   (have_image dir58 mod2)
   (have_image dir6 mod3)
   (have_image dir31 mod2)
   (have_image dir40 mod1)
   (have_image dir28 mod2)
   (have_image dir6 mod2)
   (have_image dir38 mod5)
   (have_image dir15 mod3)
   (have_image dir31 mod4)
   (have_image dir8 mod2)
   (have_image dir57 mod1)
   (have_image dir50 mod2)
   (have_image dir24 mod4)
   (have_image dir56 mod1)
   (have_image dir40 mod6)
   (have_image dir47 mod1)
   (have_image dir53 mod4)
   (have_image dir14 mod1)
   (have_image dir51 mod2)
   (have_image dir20 mod3)
   (have_image dir25 mod2)
   (have_image dir52 mod1)
   (have_image dir45 mod5)
   (have_image dir45 mod6)
   (have_image dir10 mod2)
   (have_image dir44 mod6)
   (have_image dir9 mod6)
   (have_image dir8 mod5)
   (have_image dir2 mod2)
   (have_image dir2 mod6)
   (have_image dir7 mod3)
   (have_image dir20 mod6)
   (have_image dir38 mod4)
   (have_image dir54 mod5)
   (have_image dir33 mod4)
   (have_image dir56 mod3)
   (have_image dir57 mod6)
   (have_image dir49 mod3)
   (have_image dir49 mod4)
   (have_image dir25 mod4)
   (have_image dir51 mod5)
   (have_image dir11 mod5)
   (have_image dir7 mod5)
   (have_image dir18 mod3)
   (have_image dir21 mod6)
   (have_image dir17 mod1)
   (have_image dir20 mod1)
   (have_image dir57 mod5)
   (have_image dir34 mod6)
   (have_image dir3 mod3)
   (have_image dir23 mod1)
   (have_image dir30 mod4)
   (have_image dir57 mod3)
   (have_image dir33 mod5)
   (have_image dir35 mod4)
   (have_image dir5 mod6)
   (have_image dir2 mod5)
   (have_image dir16 mod4)
   (have_image dir52 mod4)
   (have_image dir38 mod2)
   (have_image dir3 mod1)
   (have_image dir1 mod2)
   (have_image dir40 mod4)
   (have_image dir4 mod3)
   (have_image dir1 mod6)
   (have_image dir24 mod1)
   (have_image dir36 mod5)
   (have_image dir29 mod4)
   (have_image dir31 mod6)
   (have_image dir34 mod4)
   (have_image dir2 mod1)
   (have_image dir25 mod1)
   (have_image dir20 mod5)
   (have_image dir11 mod1)
   (have_image dir27 mod4)
   (have_image dir43 mod4)
   (have_image dir41 mod4)
   (have_image dir13 mod2)
   (have_image dir30 mod2)
   (have_image dir36 mod2)
   (have_image dir23 mod2)
   (have_image dir50 mod1)
   (have_image dir16 mod1)
   (have_image dir30 mod1)
   (have_image dir58 mod3)
   (have_image dir30 mod3)
   (have_image dir18 mod4)
   (have_image dir26 mod6)
   (have_image dir26 mod1)
   (have_image dir33 mod6)
   (have_image dir58 mod6)
   (have_image dir8 mod6)
   (have_image dir34 mod3)
   (have_image dir37 mod5)
   (have_image dir1 mod3)
   (have_image dir12 mod2)
   (have_image dir35 mod5)
   (have_image dir25 mod5)
   (have_image dir39 mod1)
   (have_image dir11 mod6)
   (have_image dir53 mod1)
   (have_image dir12 mod1)
   (have_image dir26 mod2)
   (have_image dir40 mod2)
   (have_image dir5 mod5)
   (have_image dir46 mod1)
   (have_image dir8 mod1)
   (have_image dir53 mod2)
   (have_image dir9 mod3)
   (have_image dir47 mod3)
   (have_image dir46 mod4)
   (have_image dir36 mod6)
   (have_image dir9 mod5)
   (have_image dir21 mod2)
   (have_image dir9 mod1)
   (have_image dir46 mod3)
   (have_image dir31 mod1)
   (have_image dir32 mod3)
   (have_image dir55 mod1)
   (have_image dir12 mod6)
   (have_image dir48 mod1)
   (have_image dir32 mod1)
   (have_image dir10 mod6)
   (have_image dir36 mod1)
   (have_image dir46 mod2)
   (have_image dir22 mod1)
   (have_image dir23 mod6))))
