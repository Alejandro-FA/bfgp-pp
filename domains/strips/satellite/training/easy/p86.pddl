;; satellites=9, instruments=18, modes=3, directions=9, out_folder=training/easy, instance_id=86, seed=119

(define (problem satellite-86)
 (:domain satellite)
 (:objects 
    sat1 sat2 sat3 sat4 sat5 sat6 sat7 sat8 sat9 - satellite
    ins1 ins2 ins3 ins4 ins5 ins6 ins7 ins8 ins9 ins10 ins11 ins12 ins13 ins14 ins15 ins16 ins17 ins18 - instrument
    mod1 mod2 mod3 - mode
    dir1 dir2 dir3 dir4 dir5 dir6 dir7 dir8 dir9 - direction
    )
 (:init 
    (pointing sat1 dir5)
    (pointing sat2 dir3)
    (pointing sat3 dir9)
    (pointing sat4 dir9)
    (pointing sat5 dir7)
    (pointing sat6 dir2)
    (pointing sat7 dir2)
    (pointing sat8 dir7)
    (pointing sat9 dir4)
    (power_avail sat1)
    (power_avail sat2)
    (power_avail sat3)
    (power_avail sat4)
    (power_avail sat5)
    (power_avail sat6)
    (power_avail sat7)
    (power_avail sat8)
    (power_avail sat9)
    (calibration_target ins1 dir3)
    (calibration_target ins2 dir5)
    (calibration_target ins3 dir5)
    (calibration_target ins4 dir4)
    (calibration_target ins5 dir8)
    (calibration_target ins6 dir1)
    (calibration_target ins7 dir7)
    (calibration_target ins8 dir5)
    (calibration_target ins9 dir7)
    (calibration_target ins10 dir1)
    (calibration_target ins11 dir6)
    (calibration_target ins12 dir4)
    (calibration_target ins13 dir3)
    (calibration_target ins14 dir8)
    (calibration_target ins15 dir1)
    (calibration_target ins16 dir9)
    (calibration_target ins17 dir9)
    (calibration_target ins18 dir8)
    (on_board ins1 sat9)
    (on_board ins2 sat3)
    (on_board ins3 sat5)
    (on_board ins4 sat4)
    (on_board ins5 sat6)
    (on_board ins6 sat8)
    (on_board ins7 sat1)
    (on_board ins8 sat2)
    (on_board ins9 sat7)
    (on_board ins10 sat9)
    (on_board ins11 sat9)
    (on_board ins12 sat3)
    (on_board ins13 sat2)
    (on_board ins14 sat1)
    (on_board ins15 sat3)
    (on_board ins16 sat2)
    (on_board ins17 sat3)
    (on_board ins18 sat3)
    (supports ins16 mod2)
    (supports ins2 mod2)
    (supports ins15 mod2)
    (supports ins11 mod3)
    (supports ins3 mod2)
    (supports ins15 mod1)
    (supports ins14 mod3)
    (supports ins6 mod3)
    (supports ins8 mod1)
    (supports ins17 mod3)
    (supports ins3 mod1)
    (supports ins15 mod3)
    (supports ins1 mod3)
    (supports ins17 mod2)
    (supports ins16 mod1)
    (supports ins4 mod3)
    (supports ins9 mod2)
    (supports ins5 mod1)
    (supports ins14 mod1)
    (supports ins4 mod2)
    (supports ins2 mod3)
    (supports ins6 mod2)
    (supports ins10 mod3)
    (supports ins2 mod1)
    (supports ins7 mod1)
    (supports ins18 mod2)
    (supports ins16 mod3)
    (supports ins10 mod1)
    (supports ins13 mod2)
    (supports ins3 mod3)
    (supports ins11 mod2)
    (supports ins13 mod1)
    (supports ins14 mod2)
    (supports ins10 mod2)
    (supports ins1 mod2)
    (supports ins1 mod1)
    (supports ins12 mod2))
 (:goal  (and (pointing sat1 dir1)
   (pointing sat3 dir3)
   (pointing sat4 dir9)
   (pointing sat5 dir2)
   (pointing sat6 dir3)
   (pointing sat7 dir4)
   (have_image dir3 mod1)
   (have_image dir1 mod3)
   (have_image dir5 mod2)
   (have_image dir5 mod1)
   (have_image dir6 mod1)
   (have_image dir8 mod1))))
