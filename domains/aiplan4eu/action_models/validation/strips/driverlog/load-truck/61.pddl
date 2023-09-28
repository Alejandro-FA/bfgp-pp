
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem DLOG-3-3-6)
    (:domain driverlog)

    (:objects
        driver1 driver2 driver3 p0-1 p1-2 p2-3 p2-5 p3-2 p3-7 p4-6 p4-7 p6-2 p6-5 p6-8 p7-9 p8-3 p8-5 p9-4 package1 package2 package3 package4 package5 package6 s0 s1 s2 s3 s4 s5 s6 s7 s8 s9 truck1 truck2 truck3 - object
    )

    (:init
        (at package4 s3)
        (at package3 s9)
        (at package6 s4)
        (at truck2 s1)
        (at package1 s5)
        (at driver3 p6-2)
        (at truck3 s8)
        (at driver2 p3-7)
        (at truck1 s3)
        (at package2 s5)
        (at driver1 p9-4)
        (driver driver1)
        (driver driver3)
        (driver driver2)
        (empty truck2)
        (empty truck3)
        (empty truck1)
        (truck truck2)
        (truck truck1)
        (truck truck3)
        (obj package6)
        (obj package4)
        (obj package5)
        (obj package2)
        (obj package1)
        (obj package3)
        (location p8-3)
        (location s2)
        (location s3)
        (location p2-5)
        (location s1)
        (location p4-7)
        (location s8)
        (location s9)
        (location s7)
        (location s4)
        (location p0-1)
        (location p9-4)
        (location s5)
        (location p3-7)
        (location p1-2)
        (location p6-5)
        (location s0)
        (location p2-3)
        (location p3-2)
        (location p7-9)
        (location s6)
        (location p8-5)
        (location p6-8)
        (location p6-2)
        (location p4-6)
        (path s4 p4-7)
        (path p6-2 s6)
        (path s2 p6-2)
        (path p3-7 s3)
        (path p2-5 s5)
        (path p8-5 s8)
        (path s5 p8-5)
        (path p6-8 s6)
        (path p0-1 s1)
        (path p8-5 s5)
        (path s3 p8-3)
        (path p8-3 s3)
        (path s4 p9-4)
        (path p2-3 s2)
        (path s7 p3-7)
        (path p6-2 s2)
        (path p2-3 s3)
        (path s2 p2-5)
        (path p3-7 s7)
        (path p1-2 s2)
        (path p1-2 s1)
        (path s9 p7-9)
        (path p8-3 s8)
        (path s8 p8-5)
        (path s8 p6-8)
        (path p6-5 s5)
        (path s5 p2-5)
        (path s0 p0-1)
        (path s8 p8-3)
        (path p4-6 s6)
        (path p6-8 s8)
        (path s7 p7-9)
        (path s6 p6-5)
        (path s3 p3-7)
        (path s1 p0-1)
        (path s2 p1-2)
        (path p9-4 s9)
        (path p9-4 s4)
        (path p7-9 s9)
        (path p7-9 s7)
        (path s4 p4-6)
        (path s6 p6-8)
        (path p0-1 s0)
        (path s9 p9-4)
        (path s1 p1-2)
        (path s6 p6-2)
        (path s7 p4-7)
        (path s2 p2-3)
        (path p2-5 s2)
        (path p4-6 s4)
        (path s6 p4-6)
        (path p4-7 s4)
        (path s3 p2-3)
        (path s5 p6-5)
        (path p6-5 s6)
        (path p4-7 s7)
        (link s7 s9)
        (link s6 s3)
        (link s3 s6)
        (link s6 s1)
        (link s5 s0)
        (link s4 s8)
        (link s1 s0)
        (link s4 s9)
        (link s6 s8)
        (link s4 s5)
        (link s5 s6)
        (link s2 s3)
        (link s6 s4)
        (link s3 s2)
        (link s8 s0)
        (link s3 s1)
        (link s6 s7)
        (link s1 s6)
        (link s0 s2)
        (link s6 s5)
        (link s0 s3)
        (link s0 s1)
        (link s8 s6)
        (link s5 s1)
        (link s3 s9)
        (link s1 s3)
        (link s0 s8)
        (link s7 s0)
        (link s0 s7)
        (link s0 s5)
        (link s5 s4)
        (link s7 s6)
        (link s9 s3)
        (link s1 s8)
        (link s8 s1)
        (link s1 s4)
        (link s1 s7)
        (link s1 s5)
        (link s4 s6)
        (link s9 s8)
        (link s8 s9)
        (link s8 s7)
        (link s8 s4)
        (link s9 s4)
        (link s9 s7)
        (link s7 s1)
        (link s3 s0)
        (link s2 s0)
        (link s4 s1)
        (link s7 s8)
        (in package5 truck2)
    )

    (:goal
        (and (at package3 s9) (at package6 s4) (at truck2 s1) (at package1 s5) (at driver3 p6-2) (at truck3 s8) (at driver2 p3-7) (at truck1 s3) (at package2 s5) (at driver1 p9-4) (driver driver1) (driver driver3) (driver driver2) (empty truck2) (empty truck3) (empty truck1) (truck truck2) (truck truck1) (truck truck3) (obj package6) (obj package4) (obj package5) (obj package1) (obj package2) (obj package3) (location p8-3) (location s2) (location s3) (location p2-5) (location s1) (location p4-7) (location s8) (location s9) (location s7) (location s4) (location p0-1) (location p9-4) (location s5) (location p3-7) (location p1-2) (location p6-5) (location s0) (location p2-3) (location p3-2) (location p7-9) (location s6) (location p8-5) (location p6-8) (location p6-2) (location p4-6) (path s4 p4-7) (path p6-2 s6) (path s2 p6-2) (path p3-7 s3) (path p2-5 s5) (path p8-5 s8) (path s5 p8-5) (path p6-8 s6) (path p0-1 s1) (path p8-5 s5) (path s3 p8-3) (path p8-3 s3) (path s4 p9-4) (path p2-3 s2) (path s7 p3-7) (path p6-2 s2) (path p2-3 s3) (path s2 p2-5) (path p3-7 s7) (path p1-2 s2) (path p1-2 s1) (path s9 p7-9) (path p8-3 s8) (path s8 p8-5) (path s8 p6-8) (path p6-5 s5) (path s5 p2-5) (path s0 p0-1) (path s8 p8-3) (path p4-6 s6) (path p6-8 s8) (path s7 p7-9) (path s6 p6-5) (path s3 p3-7) (path s1 p0-1) (path s2 p1-2) (path p9-4 s9) (path p9-4 s4) (path p7-9 s9) (path p7-9 s7) (path s4 p4-6) (path s6 p6-8) (path p0-1 s0) (path s9 p9-4) (path s1 p1-2) (path s6 p6-2) (path s7 p4-7) (path s2 p2-3) (path p2-5 s2) (path p4-6 s4) (path s6 p4-6) (path p4-7 s4) (path s3 p2-3) (path s5 p6-5) (path p6-5 s6) (path p4-7 s7) (link s7 s9) (link s3 s6) (link s6 s3) (link s6 s1) (link s5 s0) (link s4 s8) (link s1 s0) (link s4 s9) (link s6 s8) (link s4 s5) (link s5 s6) (link s2 s3) (link s6 s4) (link s3 s2) (link s8 s0) (link s3 s1) (link s6 s7) (link s1 s6) (link s0 s2) (link s6 s5) (link s0 s3) (link s0 s1) (link s8 s6) (link s5 s1) (link s3 s9) (link s1 s3) (link s0 s8) (link s7 s0) (link s0 s7) (link s0 s5) (link s5 s4) (link s7 s6) (link s9 s3) (link s1 s8) (link s8 s1) (link s1 s4) (link s1 s7) (link s1 s5) (link s4 s6) (link s9 s8) (link s8 s9) (link s8 s7) (link s8 s4) (link s9 s4) (link s9 s7) (link s7 s1) (link s3 s0) (link s2 s0) (link s4 s1) (link s7 s8) (in package4 truck1) (in package5 truck2))
    )

    
    
    
)

