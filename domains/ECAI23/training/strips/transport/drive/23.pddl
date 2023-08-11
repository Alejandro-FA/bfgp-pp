
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem transport-city-sequential-5nodes-1000size-2degree-100mindistance-2trucks-4packages-2014seed)
    (:domain transport)

    (:objects
        capacity-0 capacity-1 capacity-2 capacity-3 capacity-4 - capacity-number
        city-loc-1 city-loc-2 city-loc-3 city-loc-4 city-loc-5 - location
        package-1 package-2 package-3 package-4 - package
        truck-1 truck-2 - vehicle
    )

    (:init
        (= (total-cost ) 0.0)
        (= (road-length city-loc-3 city-loc-1) 40.0)
        (= (road-length city-loc-1 city-loc-3) 40.0)
        (= (road-length city-loc-3 city-loc-2) 18.0)
        (= (road-length city-loc-2 city-loc-3) 18.0)
        (= (road-length city-loc-4 city-loc-1) 36.0)
        (= (road-length city-loc-1 city-loc-4) 36.0)
        (= (road-length city-loc-4 city-loc-3) 37.0)
        (= (road-length city-loc-3 city-loc-4) 37.0)
        (= (road-length city-loc-5 city-loc-2) 24.0)
        (= (road-length city-loc-2 city-loc-5) 24.0)
        (= (road-length city-loc-5 city-loc-3) 26.0)
        (= (road-length city-loc-3 city-loc-5) 26.0)
        (capacity-predecessor capacity-2 capacity-3)
        (capacity-predecessor capacity-3 capacity-4)
        (capacity-predecessor capacity-1 capacity-2)
        (capacity-predecessor capacity-0 capacity-1)
        (road city-loc-3 city-loc-4)
        (road city-loc-3 city-loc-1)
        (road city-loc-3 city-loc-5)
        (road city-loc-2 city-loc-5)
        (road city-loc-4 city-loc-3)
        (road city-loc-1 city-loc-3)
        (road city-loc-1 city-loc-4)
        (road city-loc-5 city-loc-3)
        (road city-loc-5 city-loc-2)
        (road city-loc-4 city-loc-1)
        (road city-loc-3 city-loc-2)
        (road city-loc-2 city-loc-3)
        (at truck-1 city-loc-5)
        (at truck-2 city-loc-3)
        (at package-4 city-loc-5)
        (at package-2 city-loc-1)
        (capacity truck-1 capacity-3)
        (capacity truck-2 capacity-0)
        (in package-3 truck-2)
        (in package-1 truck-2)
    )

    (:goal
        (and (capacity-predecessor capacity-3 capacity-4) (capacity-predecessor capacity-1 capacity-2) (capacity-predecessor capacity-2 capacity-3) (capacity-predecessor capacity-0 capacity-1) (road city-loc-3 city-loc-4) (road city-loc-2 city-loc-3) (road city-loc-3 city-loc-1) (road city-loc-3 city-loc-5) (road city-loc-2 city-loc-5) (road city-loc-4 city-loc-3) (road city-loc-1 city-loc-3) (road city-loc-1 city-loc-4) (road city-loc-5 city-loc-3) (road city-loc-5 city-loc-2) (road city-loc-3 city-loc-2) (road city-loc-4 city-loc-1) (at package-2 city-loc-1) (at truck-1 city-loc-5) (at truck-2 city-loc-1) (at package-4 city-loc-5) (capacity truck-1 capacity-3) (capacity truck-2 capacity-0) (in package-3 truck-2) (in package-1 truck-2))
    )

    
    
    (:metric minimize (total-cost ))
)

