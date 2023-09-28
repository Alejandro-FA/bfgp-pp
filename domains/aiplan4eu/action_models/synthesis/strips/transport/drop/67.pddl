
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem transport-city-sequential-15nodes-1000size-3degree-100mindistance-3trucks-5packages-2014seed)
    (:domain transport)

    (:objects
        capacity-0 capacity-1 capacity-2 capacity-3 capacity-4 - capacity-number
        city-loc-1 city-loc-10 city-loc-11 city-loc-12 city-loc-13 city-loc-14 city-loc-15 city-loc-2 city-loc-3 city-loc-4 city-loc-5 city-loc-6 city-loc-7 city-loc-8 city-loc-9 - location
        package-1 package-2 package-3 package-4 package-5 - package
        truck-1 truck-2 truck-3 - vehicle
    )

    (:init
        (= (total-cost ) 0.0)
        (= (road-length city-loc-5 city-loc-2) 30.0)
        (= (road-length city-loc-2 city-loc-5) 30.0)
        (= (road-length city-loc-6 city-loc-2) 11.0)
        (= (road-length city-loc-2 city-loc-6) 11.0)
        (= (road-length city-loc-6 city-loc-5) 20.0)
        (= (road-length city-loc-5 city-loc-6) 20.0)
        (= (road-length city-loc-7 city-loc-1) 13.0)
        (= (road-length city-loc-1 city-loc-7) 13.0)
        (= (road-length city-loc-9 city-loc-1) 28.0)
        (= (road-length city-loc-1 city-loc-9) 28.0)
        (= (road-length city-loc-9 city-loc-3) 29.0)
        (= (road-length city-loc-3 city-loc-9) 29.0)
        (= (road-length city-loc-10 city-loc-5) 15.0)
        (= (road-length city-loc-5 city-loc-10) 15.0)
        (= (road-length city-loc-10 city-loc-7) 25.0)
        (= (road-length city-loc-7 city-loc-10) 25.0)
        (= (road-length city-loc-10 city-loc-9) 26.0)
        (= (road-length city-loc-9 city-loc-10) 26.0)
        (= (road-length city-loc-11 city-loc-2) 15.0)
        (= (road-length city-loc-2 city-loc-11) 15.0)
        (= (road-length city-loc-11 city-loc-6) 25.0)
        (= (road-length city-loc-6 city-loc-11) 25.0)
        (= (road-length city-loc-12 city-loc-1) 22.0)
        (= (road-length city-loc-1 city-loc-12) 22.0)
        (= (road-length city-loc-12 city-loc-7) 22.0)
        (= (road-length city-loc-7 city-loc-12) 22.0)
        (= (road-length city-loc-13 city-loc-4) 20.0)
        (= (road-length city-loc-4 city-loc-13) 20.0)
        (= (road-length city-loc-13 city-loc-5) 28.0)
        (= (road-length city-loc-5 city-loc-13) 28.0)
        (= (road-length city-loc-13 city-loc-8) 28.0)
        (= (road-length city-loc-8 city-loc-13) 28.0)
        (= (road-length city-loc-14 city-loc-3) 14.0)
        (= (road-length city-loc-3 city-loc-14) 14.0)
        (= (road-length city-loc-14 city-loc-9) 18.0)
        (= (road-length city-loc-9 city-loc-14) 18.0)
        (= (road-length city-loc-15 city-loc-2) 19.0)
        (= (road-length city-loc-2 city-loc-15) 19.0)
        (= (road-length city-loc-15 city-loc-5) 31.0)
        (= (road-length city-loc-5 city-loc-15) 31.0)
        (= (road-length city-loc-15 city-loc-6) 23.0)
        (= (road-length city-loc-6 city-loc-15) 23.0)
        (= (road-length city-loc-15 city-loc-11) 24.0)
        (= (road-length city-loc-11 city-loc-15) 24.0)
        (capacity-predecessor capacity-0 capacity-1)
        (capacity-predecessor capacity-2 capacity-3)
        (capacity-predecessor capacity-1 capacity-2)
        (capacity-predecessor capacity-3 capacity-4)
        (road city-loc-10 city-loc-9)
        (road city-loc-2 city-loc-5)
        (road city-loc-11 city-loc-6)
        (road city-loc-15 city-loc-2)
        (road city-loc-1 city-loc-7)
        (road city-loc-15 city-loc-11)
        (road city-loc-5 city-loc-2)
        (road city-loc-1 city-loc-12)
        (road city-loc-7 city-loc-1)
        (road city-loc-9 city-loc-1)
        (road city-loc-3 city-loc-9)
        (road city-loc-9 city-loc-3)
        (road city-loc-9 city-loc-10)
        (road city-loc-7 city-loc-10)
        (road city-loc-5 city-loc-15)
        (road city-loc-6 city-loc-5)
        (road city-loc-12 city-loc-7)
        (road city-loc-5 city-loc-6)
        (road city-loc-15 city-loc-6)
        (road city-loc-10 city-loc-7)
        (road city-loc-2 city-loc-11)
        (road city-loc-13 city-loc-8)
        (road city-loc-10 city-loc-5)
        (road city-loc-8 city-loc-13)
        (road city-loc-3 city-loc-14)
        (road city-loc-15 city-loc-5)
        (road city-loc-13 city-loc-5)
        (road city-loc-2 city-loc-15)
        (road city-loc-1 city-loc-9)
        (road city-loc-12 city-loc-1)
        (road city-loc-5 city-loc-13)
        (road city-loc-6 city-loc-11)
        (road city-loc-6 city-loc-2)
        (road city-loc-11 city-loc-2)
        (road city-loc-14 city-loc-3)
        (road city-loc-9 city-loc-14)
        (road city-loc-2 city-loc-6)
        (road city-loc-6 city-loc-15)
        (road city-loc-7 city-loc-12)
        (road city-loc-5 city-loc-10)
        (road city-loc-13 city-loc-4)
        (road city-loc-4 city-loc-13)
        (road city-loc-11 city-loc-15)
        (road city-loc-14 city-loc-9)
        (at truck-3 city-loc-12)
        (at truck-1 city-loc-10)
        (at package-3 city-loc-14)
        (at package-4 city-loc-12)
        (at package-5 city-loc-2)
        (at truck-2 city-loc-11)
        (capacity truck-3 capacity-2)
        (capacity truck-1 capacity-1)
        (capacity truck-2 capacity-3)
        (in package-1 truck-1)
        (in package-2 truck-1)
    )

    (:goal
        (and (capacity-predecessor capacity-0 capacity-1) (capacity-predecessor capacity-2 capacity-3) (capacity-predecessor capacity-1 capacity-2) (capacity-predecessor capacity-3 capacity-4) (road city-loc-10 city-loc-9) (road city-loc-2 city-loc-5) (road city-loc-11 city-loc-6) (road city-loc-15 city-loc-2) (road city-loc-1 city-loc-7) (road city-loc-15 city-loc-11) (road city-loc-5 city-loc-2) (road city-loc-1 city-loc-12) (road city-loc-7 city-loc-1) (road city-loc-9 city-loc-1) (road city-loc-3 city-loc-9) (road city-loc-7 city-loc-10) (road city-loc-9 city-loc-10) (road city-loc-9 city-loc-3) (road city-loc-5 city-loc-15) (road city-loc-6 city-loc-5) (road city-loc-12 city-loc-7) (road city-loc-5 city-loc-6) (road city-loc-15 city-loc-6) (road city-loc-10 city-loc-7) (road city-loc-2 city-loc-11) (road city-loc-13 city-loc-8) (road city-loc-10 city-loc-5) (road city-loc-8 city-loc-13) (road city-loc-3 city-loc-14) (road city-loc-15 city-loc-5) (road city-loc-13 city-loc-5) (road city-loc-2 city-loc-15) (road city-loc-1 city-loc-9) (road city-loc-12 city-loc-1) (road city-loc-5 city-loc-13) (road city-loc-6 city-loc-11) (road city-loc-6 city-loc-2) (road city-loc-11 city-loc-2) (road city-loc-14 city-loc-3) (road city-loc-9 city-loc-14) (road city-loc-2 city-loc-6) (road city-loc-6 city-loc-15) (road city-loc-7 city-loc-12) (road city-loc-5 city-loc-10) (road city-loc-13 city-loc-4) (road city-loc-4 city-loc-13) (road city-loc-11 city-loc-15) (road city-loc-14 city-loc-9) (at truck-3 city-loc-12) (at truck-1 city-loc-10) (at package-2 city-loc-10) (at package-3 city-loc-14) (at package-4 city-loc-12) (at package-5 city-loc-2) (at truck-2 city-loc-11) (capacity truck-3 capacity-2) (capacity truck-1 capacity-2) (capacity truck-2 capacity-3) (in package-1 truck-1))
    )

    
    
    (:metric minimize (total-cost ))
)

