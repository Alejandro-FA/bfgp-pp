(define (problem gripper_9)
  (:domain Gripper)
  (:objects b1 b2 b3 b4 b5 b6 b7 b8 b9 b10 - ball)
  (:init (at b1 rooma)
    (at b2 rooma)
    (at b3 rooma)
    (at b4 rooma)
    (at b5 rooma)
    (at b6 rooma)
    (at b7 rooma)
    (at b8 rooma)
    (at b9 rooma)
    (at b10 rooma)
    (at_robby rooma)
    (free left)
    (free right))
  (:goal (and (at b1 roomb)
    (at b2 roomb)
    (at b3 roomb)
    (at b4 roomb)
    (at b5 roomb)
    (at b6 roomb)
    (at b7 roomb)
    (at b8 roomb)
    (at b9 roomb)
    (at b10 roomb))))
