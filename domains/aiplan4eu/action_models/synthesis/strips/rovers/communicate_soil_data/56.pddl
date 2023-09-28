
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem roverprob4123)
    (:domain Rover)

    (:objects
        camera0 camera1 - camera
        general - lander
        colour high_res low_res - mode
        objective0 objective1 - objective
        rover0 rover1 rover2 - rover
        rover0store rover1store rover2store - store
        waypoint0 waypoint1 waypoint2 waypoint3 waypoint4 waypoint5 - waypoint
    )

    (:init
        (visible waypoint5 waypoint0)
        (visible waypoint0 waypoint1)
        (visible waypoint2 waypoint3)
        (visible waypoint5 waypoint2)
        (visible waypoint4 waypoint3)
        (visible waypoint5 waypoint1)
        (visible waypoint0 waypoint4)
        (visible waypoint4 waypoint0)
        (visible waypoint2 waypoint0)
        (visible waypoint5 waypoint4)
        (visible waypoint2 waypoint1)
        (visible waypoint1 waypoint5)
        (visible waypoint3 waypoint0)
        (visible waypoint3 waypoint2)
        (visible waypoint0 waypoint5)
        (visible waypoint1 waypoint0)
        (visible waypoint3 waypoint4)
        (visible waypoint1 waypoint2)
        (visible waypoint0 waypoint3)
        (visible waypoint2 waypoint5)
        (visible waypoint4 waypoint5)
        (visible waypoint0 waypoint2)
        (at_soil_sample waypoint1)
        (at_rock_sample waypoint2)
        (at_lander general waypoint3)
        (channel_free general)
        (at rover2 waypoint4)
        (at rover1 waypoint0)
        (at rover0 waypoint3)
        (available rover0)
        (available rover1)
        (available rover2)
        (store_of rover2store rover2)
        (store_of rover1store rover1)
        (store_of rover0store rover0)
        (empty rover2store)
        (empty rover1store)
        (empty rover0store)
        (equipped_for_soil_analysis rover0)
        (equipped_for_soil_analysis rover2)
        (equipped_for_rock_analysis rover0)
        (equipped_for_rock_analysis rover1)
        (equipped_for_rock_analysis rover2)
        (equipped_for_imaging rover0)
        (equipped_for_imaging rover2)
        (can_traverse rover2 waypoint1 waypoint0)
        (can_traverse rover0 waypoint5 waypoint2)
        (can_traverse rover2 waypoint4 waypoint5)
        (can_traverse rover1 waypoint2 waypoint3)
        (can_traverse rover0 waypoint2 waypoint3)
        (can_traverse rover2 waypoint0 waypoint3)
        (can_traverse rover0 waypoint0 waypoint4)
        (can_traverse rover0 waypoint2 waypoint0)
        (can_traverse rover2 waypoint2 waypoint5)
        (can_traverse rover0 waypoint2 waypoint1)
        (can_traverse rover1 waypoint3 waypoint2)
        (can_traverse rover0 waypoint3 waypoint2)
        (can_traverse rover1 waypoint3 waypoint0)
        (can_traverse rover2 waypoint0 waypoint1)
        (can_traverse rover2 waypoint4 waypoint0)
        (can_traverse rover2 waypoint0 waypoint4)
        (can_traverse rover1 waypoint0 waypoint5)
        (can_traverse rover0 waypoint2 waypoint5)
        (can_traverse rover1 waypoint3 waypoint4)
        (can_traverse rover2 waypoint5 waypoint2)
        (can_traverse rover0 waypoint1 waypoint2)
        (can_traverse rover1 waypoint1 waypoint0)
        (can_traverse rover1 waypoint0 waypoint3)
        (can_traverse rover2 waypoint5 waypoint4)
        (can_traverse rover1 waypoint4 waypoint3)
        (can_traverse rover2 waypoint3 waypoint0)
        (can_traverse rover1 waypoint0 waypoint1)
        (can_traverse rover0 waypoint4 waypoint0)
        (can_traverse rover0 waypoint0 waypoint2)
        (can_traverse rover1 waypoint5 waypoint0)
        (on_board camera0 rover0)
        (on_board camera1 rover2)
        (calibration_target camera1 objective1)
        (calibration_target camera0 objective0)
        (supports camera0 colour)
        (supports camera1 high_res)
        (supports camera0 high_res)
        (visible_from objective0 waypoint3)
        (visible_from objective1 waypoint0)
        (visible_from objective1 waypoint2)
        (visible_from objective0 waypoint0)
        (visible_from objective0 waypoint4)
        (visible_from objective1 waypoint1)
        (visible_from objective0 waypoint2)
        (visible_from objective1 waypoint3)
        (visible_from objective0 waypoint1)
        (have_soil_analysis rover2 waypoint4)
        (communicated_soil_data waypoint4)
        (calibrated camera0 rover0)
        (have_image rover0 objective0 high_res)
        (have_image rover0 objective0 colour)
        (have_rock_analysis rover2 waypoint4)
        (have_rock_analysis rover2 waypoint5)
        (have_rock_analysis rover0 waypoint3)
        (communicated_rock_data waypoint5)
    )

    (:goal
        (and (visible waypoint5 waypoint0) (visible waypoint0 waypoint1) (visible waypoint2 waypoint3) (visible waypoint5 waypoint2) (visible waypoint4 waypoint3) (visible waypoint5 waypoint1) (visible waypoint0 waypoint4) (visible waypoint4 waypoint0) (visible waypoint2 waypoint0) (visible waypoint5 waypoint4) (visible waypoint2 waypoint1) (visible waypoint1 waypoint5) (visible waypoint3 waypoint0) (visible waypoint3 waypoint2) (visible waypoint0 waypoint5) (visible waypoint1 waypoint0) (visible waypoint3 waypoint4) (visible waypoint1 waypoint2) (visible waypoint0 waypoint3) (visible waypoint2 waypoint5) (visible waypoint4 waypoint5) (visible waypoint0 waypoint2) (at_soil_sample waypoint1) (at_rock_sample waypoint2) (at_lander general waypoint3) (channel_free general) (at rover0 waypoint3) (at rover2 waypoint4) (at rover1 waypoint0) (available rover0) (available rover2) (available rover1) (store_of rover2store rover2) (store_of rover1store rover1) (store_of rover0store rover0) (empty rover2store) (empty rover1store) (empty rover0store) (equipped_for_soil_analysis rover0) (equipped_for_soil_analysis rover2) (equipped_for_rock_analysis rover0) (equipped_for_rock_analysis rover2) (equipped_for_rock_analysis rover1) (equipped_for_imaging rover0) (equipped_for_imaging rover2) (can_traverse rover2 waypoint1 waypoint0) (can_traverse rover0 waypoint5 waypoint2) (can_traverse rover2 waypoint4 waypoint5) (can_traverse rover1 waypoint2 waypoint3) (can_traverse rover0 waypoint2 waypoint3) (can_traverse rover2 waypoint0 waypoint3) (can_traverse rover0 waypoint0 waypoint4) (can_traverse rover0 waypoint0 waypoint2) (can_traverse rover0 waypoint2 waypoint0) (can_traverse rover2 waypoint2 waypoint5) (can_traverse rover0 waypoint2 waypoint1) (can_traverse rover1 waypoint3 waypoint2) (can_traverse rover0 waypoint3 waypoint2) (can_traverse rover1 waypoint3 waypoint0) (can_traverse rover2 waypoint0 waypoint1) (can_traverse rover2 waypoint4 waypoint0) (can_traverse rover2 waypoint0 waypoint4) (can_traverse rover1 waypoint0 waypoint5) (can_traverse rover1 waypoint3 waypoint4) (can_traverse rover2 waypoint5 waypoint2) (can_traverse rover0 waypoint1 waypoint2) (can_traverse rover1 waypoint1 waypoint0) (can_traverse rover1 waypoint0 waypoint3) (can_traverse rover2 waypoint5 waypoint4) (can_traverse rover1 waypoint4 waypoint3) (can_traverse rover2 waypoint3 waypoint0) (can_traverse rover1 waypoint0 waypoint1) (can_traverse rover0 waypoint4 waypoint0) (can_traverse rover0 waypoint2 waypoint5) (can_traverse rover1 waypoint5 waypoint0) (on_board camera0 rover0) (on_board camera1 rover2) (calibration_target camera1 objective1) (calibration_target camera0 objective0) (supports camera0 colour) (supports camera1 high_res) (supports camera0 high_res) (visible_from objective0 waypoint3) (visible_from objective1 waypoint0) (visible_from objective1 waypoint2) (visible_from objective0 waypoint0) (visible_from objective0 waypoint4) (visible_from objective1 waypoint1) (visible_from objective0 waypoint2) (visible_from objective1 waypoint3) (visible_from objective0 waypoint1) (have_soil_analysis rover2 waypoint4) (communicated_soil_data waypoint4) (calibrated camera0 rover0) (have_image rover0 objective0 high_res) (have_image rover0 objective0 colour) (have_rock_analysis rover2 waypoint4) (have_rock_analysis rover2 waypoint5) (have_rock_analysis rover0 waypoint3) (communicated_rock_data waypoint5))
    )

    
    
    
)

