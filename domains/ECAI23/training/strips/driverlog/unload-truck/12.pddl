
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem DLOG-2-2-2)
    (:domain driverlog)

    (:objects
        driver1 driver2 p1-0 p1-2 package1 package2 s0 s1 s2 truck1 truck2 - object
    )

    (:init
        (at truck1 s0)
        (at driver2 p1-0)
        (at package2 s0)
        (at driver1 s1)
        (at truck2 s0)
        (driver driver2)
        (driver driver1)
        (empty truck2)
        (empty truck1)
        (truck truck2)
        (truck truck1)
        (obj package1)
        (obj package2)
        (location p1-2)
        (location s0)
        (location p1-0)
        (location s2)
        (location s1)
        (path s1 p1-0)
        (path p1-2 s1)
        (path p1-0 s1)
        (path p1-0 s0)
        (path p1-2 s2)
        (path s2 p1-2)
        (path s1 p1-2)
        (path s0 p1-0)
        (link s0 s2)
        (link s1 s2)
        (link s2 s0)
        (link s2 s1)
        (link s0 s1)
        (link s1 s0)
        (in package1 truck1)
    )

    (:goal
        (and (at truck1 s0) (at driver2 p1-0) (at package2 s0) (at package1 s0) (at driver1 s1) (at truck2 s0) (driver driver2) (driver driver1) (empty truck2) (empty truck1) (truck truck2) (truck truck1) (obj package1) (obj package2) (location p1-2) (location s0) (location p1-0) (location s2) (location s1) (path s1 p1-0) (path p1-0 s1) (path s0 p1-0) (path p1-0 s0) (path p1-2 s2) (path s2 p1-2) (path s1 p1-2) (path p1-2 s1) (link s0 s2) (link s1 s2) (link s2 s0) (link s2 s1) (link s0 s1) (link s1 s0))
    )

    
    
    
)

