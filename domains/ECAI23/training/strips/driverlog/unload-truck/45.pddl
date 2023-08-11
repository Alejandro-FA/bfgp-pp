
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem DLOG-3-2-4)
    (:domain driverlog)

    (:objects
        driver1 driver2 driver3 p0-1 p1-0 p1-2 p2-1 package1 package2 package3 package4 s0 s1 s2 truck1 truck2 - object
    )

    (:init
        (at driver2 p1-2)
        (at truck2 s1)
        (at truck1 s2)
        (driver driver2)
        (driver driver1)
        (driver driver3)
        (truck truck2)
        (truck truck1)
        (obj package1)
        (obj package3)
        (obj package2)
        (obj package4)
        (location p0-1)
        (location p1-2)
        (location s0)
        (location p1-0)
        (location s2)
        (location p2-1)
        (location s1)
        (path s1 p0-1)
        (path p1-2 s2)
        (path s2 p1-2)
        (path s0 p0-1)
        (path p0-1 s0)
        (path p0-1 s1)
        (path s1 p1-2)
        (path p1-2 s1)
        (link s0 s2)
        (link s1 s2)
        (link s2 s0)
        (link s2 s1)
        (link s0 s1)
        (link s1 s0)
        (in package3 truck2)
        (in package1 truck2)
        (in package4 truck1)
        (in package2 truck1)
        (driving driver1 truck2)
        (driving driver3 truck1)
    )

    (:goal
        (and (at package1 s1) (at driver2 p1-2) (at truck2 s1) (at truck1 s2) (driver driver2) (driver driver1) (driver driver3) (truck truck2) (truck truck1) (obj package1) (obj package3) (obj package2) (obj package4) (location p0-1) (location p1-2) (location s0) (location p1-0) (location s2) (location p2-1) (location s1) (path s1 p0-1) (path p1-2 s2) (path s2 p1-2) (path s0 p0-1) (path p0-1 s0) (path p0-1 s1) (path s1 p1-2) (path p1-2 s1) (link s0 s2) (link s1 s2) (link s2 s0) (link s2 s1) (link s0 s1) (link s1 s0) (in package3 truck2) (in package4 truck1) (in package2 truck1) (driving driver1 truck2) (driving driver3 truck1))
    )

    
    
    
)

