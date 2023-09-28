
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem DLOG-3-2-5)
    (:domain driverlog)

    (:objects
        driver1 driver2 driver3 p0-1 p0-2 p1-2 package1 package2 package3 package4 package5 s0 s1 s2 truck1 truck2 - object
    )

    (:init
        (at driver2 s2)
        (at package3 s2)
        (at package5 s1)
        (at truck2 s1)
        (at truck1 s2)
        (at driver3 s0)
        (at package4 s2)
        (driver driver1)
        (driver driver3)
        (driver driver2)
        (empty truck2)
        (truck truck2)
        (truck truck1)
        (obj package4)
        (obj package5)
        (obj package1)
        (obj package2)
        (obj package3)
        (location p0-1)
        (location p1-2)
        (location s2)
        (location s1)
        (location s0)
        (location p0-2)
        (path p0-2 s2)
        (path s0 p0-1)
        (path p0-1 s0)
        (path p1-2 s2)
        (path p1-2 s1)
        (path s1 p0-1)
        (path s1 p1-2)
        (path s2 p1-2)
        (path p0-2 s0)
        (path p0-1 s1)
        (path s2 p0-2)
        (path s0 p0-2)
        (link s2 s1)
        (link s0 s2)
        (link s0 s1)
        (link s1 s0)
        (link s2 s0)
        (link s1 s2)
        (driving driver1 truck1)
        (in package1 truck1)
        (in package2 truck1)
    )

    (:goal
        (and (at driver2 s2) (at package3 s2) (at package5 s1) (at truck2 s1) (at truck1 s2) (at driver3 s0) (driver driver1) (driver driver3) (driver driver2) (empty truck2) (truck truck2) (truck truck1) (obj package4) (obj package5) (obj package2) (obj package1) (obj package3) (location p0-1) (location p1-2) (location s2) (location s1) (location s0) (location p0-2) (path p0-2 s2) (path s0 p0-1) (path p0-1 s0) (path p1-2 s2) (path p1-2 s1) (path s1 p0-1) (path s1 p1-2) (path s2 p1-2) (path p0-2 s0) (path p0-1 s1) (path s2 p0-2) (path s0 p0-2) (link s2 s1) (link s0 s2) (link s0 s1) (link s1 s0) (link s2 s0) (link s1 s2) (driving driver1 truck1) (in package1 truck1) (in package4 truck1) (in package2 truck1))
    )

    
    
    
)

