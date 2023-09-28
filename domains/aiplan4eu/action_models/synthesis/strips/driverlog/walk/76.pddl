
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
        (at package3 s1)
        (at truck1 s0)
        (at truck2 s2)
        (at driver1 p1-2)
        (at package4 s0)
        (at driver3 s0)
        (driver driver1)
        (driver driver3)
        (driver driver2)
        (empty truck1)
        (truck truck2)
        (truck truck1)
        (obj package4)
        (obj package1)
        (obj package2)
        (obj package3)
        (location p0-1)
        (location p1-2)
        (location s2)
        (location p2-1)
        (location s1)
        (location p1-0)
        (location s0)
        (path s0 p0-1)
        (path p0-1 s0)
        (path p1-2 s2)
        (path p1-2 s1)
        (path s1 p0-1)
        (path s1 p1-2)
        (path s2 p1-2)
        (path p0-1 s1)
        (link s2 s1)
        (link s0 s2)
        (link s0 s1)
        (link s1 s0)
        (link s2 s0)
        (link s1 s2)
        (in package2 truck2)
        (in package1 truck2)
        (driving driver2 truck2)
    )

    (:goal
        (and (at package3 s1) (at truck1 s0) (at truck2 s2) (at package4 s0) (at driver3 s0) (at driver1 s1) (driver driver1) (driver driver3) (driver driver2) (empty truck1) (truck truck2) (truck truck1) (obj package4) (obj package2) (obj package1) (obj package3) (location p0-1) (location p1-2) (location s2) (location p2-1) (location s1) (location p1-0) (location s0) (path s0 p0-1) (path p0-1 s0) (path p1-2 s2) (path p1-2 s1) (path s1 p0-1) (path s1 p1-2) (path s2 p1-2) (path p0-1 s1) (link s2 s1) (link s0 s2) (link s0 s1) (link s1 s0) (link s2 s0) (link s1 s2) (in package2 truck2) (in package1 truck2) (driving driver2 truck2))
    )

    
    
    
)

