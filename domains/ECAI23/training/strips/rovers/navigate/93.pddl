
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
        (visible waypoint2 waypoint0)
        (visible waypoint1 waypoint0)
        (visible waypoint4 waypoint0)
        (visible waypoint2 waypoint1)
        (visible waypoint1 waypoint2)
        (visible waypoint0 waypoint4)
        (visible waypoint3 waypoint4)
        (visible waypoint5 waypoint0)
        (visible waypoint0 waypoint5)
        (visible waypoint0 waypoint3)
        (visible waypoint5 waypoint1)
        (visible waypoint5 waypoint2)
        (visible waypoint1 waypoint5)
        (visible waypoint2 waypoint5)
        (visible waypoint2 waypoint3)
        (visible waypoint4 waypoint5)
        (visible waypoint5 waypoint4)
        (visible waypoint3 waypoint0)
        (visible waypoint4 waypoint3)
        (visible waypoint0 waypoint1)
        (visible waypoint0 waypoint2)
        (visible waypoint3 waypoint2)
        (at_soil_sample waypoint4)
        (at_soil_sample waypoint1)
        (at_lander general waypoint3)
        (channel_free general)
        (at rover2 waypoint0)
        (at rover1 waypoint0)
        (at rover0 waypoint1)
        (available rover2)
        (available rover1)
        (available rover0)
        (store_of rover0store rover0)
        (store_of rover2store rover2)
        (store_of rover1store rover1)
        (empty rover0store)
        (empty rover2store)
        (equipped_for_soil_analysis rover2)
        (equipped_for_soil_analysis rover0)
        (equipped_for_rock_analysis rover2)
        (equipped_for_rock_analysis rover1)
        (equipped_for_rock_analysis rover0)
        (equipped_for_imaging rover2)
        (equipped_for_imaging rover0)
        (can_traverse rover0 waypoint4 waypoint0)
        (can_traverse rover0 waypoint0 waypoint4)
        (can_traverse rover2 waypoint5 waypoint2)
        (can_traverse rover0 waypoint2 waypoint1)
        (can_traverse rover0 waypoint1 waypoint2)
        (can_traverse rover1 waypoint5 waypoint0)
        (can_traverse rover2 waypoint2 waypoint5)
        (can_traverse rover2 waypoint0 waypoint1)
        (can_traverse rover2 waypoint4 waypoint5)
        (can_traverse rover2 waypoint5 waypoint4)
        (can_traverse rover1 waypoint0 waypoint1)
        (can_traverse rover2 waypoint3 waypoint0)
        (can_traverse rover1 waypoint2 waypoint3)
        (can_traverse rover1 waypoint3 waypoint0)
        (can_traverse rover1 waypoint4 waypoint3)
        (can_traverse rover0 waypoint5 waypoint2)
        (can_traverse rover0 waypoint2 waypoint5)
        (can_traverse rover0 waypoint0 waypoint2)
        (can_traverse rover0 waypoint2 waypoint3)
        (can_traverse rover1 waypoint3 waypoint2)
        (can_traverse rover2 waypoint0 waypoint4)
        (can_traverse rover2 waypoint1 waypoint0)
        (can_traverse rover1 waypoint3 waypoint4)
        (can_traverse rover2 waypoint4 waypoint0)
        (can_traverse rover1 waypoint1 waypoint0)
        (can_traverse rover0 waypoint3 waypoint2)
        (can_traverse rover2 waypoint0 waypoint3)
        (can_traverse rover1 waypoint0 waypoint5)
        (can_traverse rover1 waypoint0 waypoint3)
        (can_traverse rover0 waypoint2 waypoint0)
        (on_board camera1 rover2)
        (on_board camera0 rover0)
        (calibration_target camera0 objective0)
        (calibration_target camera1 objective1)
        (supports camera1 high_res)
        (supports camera0 colour)
        (supports camera0 high_res)
        (visible_from objective1 waypoint1)
        (visible_from objective0 waypoint1)
        (visible_from objective0 waypoint2)
        (visible_from objective1 waypoint2)
        (visible_from objective1 waypoint3)
        (visible_from objective0 waypoint3)
        (visible_from objective1 waypoint0)
        (visible_from objective0 waypoint4)
        (visible_from objective0 waypoint0)
        (full rover1store)
        (have_rock_analysis rover2 waypoint4)
        (have_rock_analysis rover0 waypoint5)
        (have_rock_analysis rover1 waypoint2)
        (have_rock_analysis rover1 waypoint3)
        (have_image rover0 objective1 colour)
        (have_image rover2 objective0 high_res)
        (have_image rover0 objective0 high_res)
        (communicated_rock_data waypoint4)
        (communicated_rock_data waypoint3)
        (communicated_image_data objective0 high_res)
    )

    (:goal
        (and (visible waypoint2 waypoint0) (visible waypoint1 waypoint0) (visible waypoint4 waypoint0) (visible waypoint2 waypoint1) (visible waypoint1 waypoint2) (visible waypoint0 waypoint4) (visible waypoint3 waypoint4) (visible waypoint5 waypoint0) (visible waypoint0 waypoint5) (visible waypoint0 waypoint3) (visible waypoint5 waypoint1) (visible waypoint5 waypoint2) (visible waypoint1 waypoint5) (visible waypoint2 waypoint5) (visible waypoint2 waypoint3) (visible waypoint4 waypoint5) (visible waypoint5 waypoint4) (visible waypoint3 waypoint0) (visible waypoint4 waypoint3) (visible waypoint0 waypoint1) (visible waypoint0 waypoint2) (visible waypoint3 waypoint2) (at_soil_sample waypoint4) (at_soil_sample waypoint1) (at_lander general waypoint3) (channel_free general) (at rover2 waypoint0) (at rover1 waypoint0) (at rover0 waypoint2) (available rover2) (available rover1) (available rover0) (store_of rover0store rover0) (store_of rover2store rover2) (store_of rover1store rover1) (empty rover0store) (empty rover2store) (equipped_for_soil_analysis rover2) (equipped_for_soil_analysis rover0) (equipped_for_rock_analysis rover2) (equipped_for_rock_analysis rover1) (equipped_for_rock_analysis rover0) (equipped_for_imaging rover2) (equipped_for_imaging rover0) (can_traverse rover0 waypoint4 waypoint0) (can_traverse rover0 waypoint0 waypoint4) (can_traverse rover2 waypoint5 waypoint2) (can_traverse rover0 waypoint2 waypoint1) (can_traverse rover0 waypoint1 waypoint2) (can_traverse rover1 waypoint5 waypoint0) (can_traverse rover2 waypoint2 waypoint5) (can_traverse rover2 waypoint0 waypoint1) (can_traverse rover2 waypoint4 waypoint5) (can_traverse rover1 waypoint0 waypoint3) (can_traverse rover2 waypoint5 waypoint4) (can_traverse rover1 waypoint0 waypoint1) (can_traverse rover2 waypoint3 waypoint0) (can_traverse rover1 waypoint2 waypoint3) (can_traverse rover1 waypoint3 waypoint0) (can_traverse rover1 waypoint4 waypoint3) (can_traverse rover0 waypoint5 waypoint2) (can_traverse rover0 waypoint2 waypoint5) (can_traverse rover0 waypoint0 waypoint2) (can_traverse rover0 waypoint2 waypoint3) (can_traverse rover1 waypoint3 waypoint2) (can_traverse rover2 waypoint0 waypoint4) (can_traverse rover2 waypoint1 waypoint0) (can_traverse rover2 waypoint4 waypoint0) (can_traverse rover1 waypoint1 waypoint0) (can_traverse rover0 waypoint3 waypoint2) (can_traverse rover2 waypoint0 waypoint3) (can_traverse rover1 waypoint0 waypoint5) (can_traverse rover1 waypoint3 waypoint4) (can_traverse rover0 waypoint2 waypoint0) (on_board camera1 rover2) (on_board camera0 rover0) (calibration_target camera0 objective0) (calibration_target camera1 objective1) (supports camera1 high_res) (supports camera0 high_res) (supports camera0 colour) (visible_from objective1 waypoint1) (visible_from objective0 waypoint1) (visible_from objective0 waypoint2) (visible_from objective1 waypoint2) (visible_from objective1 waypoint3) (visible_from objective0 waypoint3) (visible_from objective1 waypoint0) (visible_from objective0 waypoint4) (visible_from objective0 waypoint0) (full rover1store) (have_rock_analysis rover2 waypoint4) (have_rock_analysis rover0 waypoint5) (have_rock_analysis rover1 waypoint2) (have_rock_analysis rover1 waypoint3) (have_image rover2 objective0 high_res) (have_image rover0 objective1 colour) (have_image rover0 objective0 high_res) (communicated_rock_data waypoint4) (communicated_rock_data waypoint3) (communicated_image_data objective0 high_res))
    )

    
    
    
)

