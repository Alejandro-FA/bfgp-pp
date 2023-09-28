
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-grid-y-3)
    (:domain grid)

    (:objects
        circle diamond key0 key1 key10 key2 key3 key4 key5 key6 key7 key8 key9 node0-0 node0-1 node0-2 node0-3 node0-4 node0-5 node0-6 node1-0 node1-1 node1-2 node1-3 node1-4 node1-5 node1-6 node2-0 node2-1 node2-2 node2-3 node2-4 node2-5 node2-6 node3-0 node3-1 node3-2 node3-3 node3-4 node3-5 node3-6 node4-0 node4-1 node4-2 node4-3 node4-4 node4-5 node4-6 node5-0 node5-1 node5-2 node5-3 node5-4 node5-5 node5-6 node6-0 node6-1 node6-2 node6-3 node6-4 node6-5 node6-6 square triangle - object
    )

    (:init
        (arm-empty )
        (place node2-0)
        (place node1-4)
        (place node1-0)
        (place node0-0)
        (place node2-2)
        (place node1-6)
        (place node1-3)
        (place node2-4)
        (place node4-3)
        (place node2-6)
        (place node0-5)
        (place node4-5)
        (place node5-2)
        (place node4-4)
        (place node2-1)
        (place node5-6)
        (place node3-5)
        (place node1-5)
        (place node4-1)
        (place node5-5)
        (place node2-5)
        (place node3-1)
        (place node1-2)
        (place node5-4)
        (place node0-2)
        (place node0-6)
        (place node6-3)
        (place node6-5)
        (place node5-1)
        (place node6-2)
        (place node3-0)
        (place node2-3)
        (place node6-1)
        (place node6-6)
        (place node0-4)
        (place node1-1)
        (place node4-0)
        (place node5-3)
        (place node3-4)
        (place node3-3)
        (place node0-1)
        (place node6-0)
        (place node3-6)
        (place node0-3)
        (place node3-2)
        (place node5-0)
        (place node4-6)
        (place node4-2)
        (place node6-4)
        (shape circle)
        (shape square)
        (shape diamond)
        (shape triangle)
        (conn node4-4 node4-5)
        (conn node1-3 node1-2)
        (conn node2-1 node3-1)
        (conn node6-5 node6-4)
        (conn node6-4 node5-4)
        (conn node6-3 node6-4)
        (conn node1-3 node2-3)
        (conn node1-1 node2-1)
        (conn node3-2 node3-3)
        (conn node4-1 node3-1)
        (conn node5-1 node6-1)
        (conn node2-3 node2-4)
        (conn node2-5 node2-4)
        (conn node5-6 node6-6)
        (conn node1-2 node1-1)
        (conn node4-3 node5-3)
        (conn node4-6 node3-6)
        (conn node5-5 node5-4)
        (conn node0-5 node0-4)
        (conn node0-1 node1-1)
        (conn node2-5 node3-5)
        (conn node3-3 node4-3)
        (conn node4-3 node3-3)
        (conn node1-6 node2-6)
        (conn node6-2 node6-1)
        (conn node5-6 node4-6)
        (conn node1-0 node1-1)
        (conn node3-0 node4-0)
        (conn node2-6 node3-6)
        (conn node3-5 node3-6)
        (conn node5-0 node5-1)
        (conn node6-6 node5-6)
        (conn node4-1 node4-2)
        (conn node1-6 node1-5)
        (conn node5-1 node5-2)
        (conn node4-6 node5-6)
        (conn node6-0 node6-1)
        (conn node1-0 node0-0)
        (conn node6-6 node6-5)
        (conn node5-2 node4-2)
        (conn node2-0 node2-1)
        (conn node5-1 node4-1)
        (conn node3-4 node3-3)
        (conn node5-3 node5-2)
        (conn node3-3 node2-3)
        (conn node6-3 node5-3)
        (conn node2-2 node1-2)
        (conn node5-5 node4-5)
        (conn node1-4 node0-4)
        (conn node2-3 node2-2)
        (conn node3-3 node3-4)
        (conn node1-2 node0-2)
        (conn node1-5 node2-5)
        (conn node2-0 node3-0)
        (conn node2-2 node2-3)
        (conn node2-4 node2-3)
        (conn node0-1 node0-2)
        (conn node2-5 node2-6)
        (conn node2-4 node3-4)
        (conn node1-1 node1-2)
        (conn node0-4 node0-3)
        (conn node3-1 node4-1)
        (conn node2-5 node1-5)
        (conn node6-5 node5-5)
        (conn node5-4 node5-5)
        (conn node0-4 node1-4)
        (conn node2-1 node2-2)
        (conn node1-4 node1-3)
        (conn node2-1 node2-0)
        (conn node6-1 node5-1)
        (conn node6-1 node6-2)
        (conn node0-0 node0-1)
        (conn node1-5 node1-4)
        (conn node1-1 node0-1)
        (conn node0-2 node0-3)
        (conn node6-3 node6-2)
        (conn node1-2 node1-3)
        (conn node3-2 node3-1)
        (conn node0-1 node0-0)
        (conn node4-4 node4-3)
        (conn node5-3 node4-3)
        (conn node1-6 node0-6)
        (conn node2-3 node3-3)
        (conn node4-5 node3-5)
        (conn node2-4 node2-5)
        (conn node3-1 node3-2)
        (conn node4-2 node3-2)
        (conn node3-6 node3-5)
        (conn node6-4 node6-3)
        (conn node0-5 node1-5)
        (conn node6-2 node5-2)
        (conn node2-6 node2-5)
        (conn node4-5 node5-5)
        (conn node5-5 node5-6)
        (conn node3-2 node4-2)
        (conn node5-4 node4-4)
        (conn node0-5 node0-6)
        (conn node4-2 node5-2)
        (conn node5-3 node6-3)
        (conn node1-3 node0-3)
        (conn node3-1 node2-1)
        (conn node3-4 node3-5)
        (conn node4-0 node4-1)
        (conn node5-1 node5-0)
        (conn node6-2 node6-3)
        (conn node4-2 node4-1)
        (conn node3-5 node3-4)
        (conn node1-3 node1-4)
        (conn node4-1 node4-0)
        (conn node3-6 node2-6)
        (conn node1-4 node2-4)
        (conn node4-4 node3-4)
        (conn node0-4 node0-5)
        (conn node1-4 node1-5)
        (conn node1-5 node1-6)
        (conn node5-2 node5-3)
        (conn node4-3 node4-4)
        (conn node1-0 node2-0)
        (conn node1-5 node0-5)
        (conn node0-0 node1-0)
        (conn node4-5 node4-4)
        (conn node5-0 node6-0)
        (conn node1-1 node1-0)
        (conn node5-4 node6-4)
        (conn node6-0 node5-0)
        (conn node5-6 node5-5)
        (conn node6-4 node6-5)
        (conn node3-5 node2-5)
        (conn node3-3 node3-2)
        (conn node2-3 node1-3)
        (conn node4-2 node4-3)
        (conn node3-0 node3-1)
        (conn node0-3 node0-2)
        (conn node0-6 node1-6)
        (conn node3-4 node2-4)
        (conn node0-2 node1-2)
        (conn node2-1 node1-1)
        (conn node4-1 node5-1)
        (conn node4-4 node5-4)
        (conn node5-3 node5-4)
        (conn node3-4 node4-4)
        (conn node3-2 node2-2)
        (conn node0-6 node0-5)
        (conn node2-2 node3-2)
        (conn node0-3 node0-4)
        (conn node5-5 node6-5)
        (conn node5-2 node5-1)
        (conn node4-3 node4-2)
        (conn node4-5 node4-6)
        (conn node5-2 node6-2)
        (conn node2-4 node1-4)
        (conn node3-6 node4-6)
        (conn node0-2 node0-1)
        (conn node1-2 node2-2)
        (conn node6-5 node6-6)
        (conn node2-0 node1-0)
        (conn node4-0 node3-0)
        (conn node4-6 node4-5)
        (conn node2-6 node1-6)
        (conn node3-1 node3-0)
        (conn node3-0 node2-0)
        (conn node5-4 node5-3)
        (conn node2-2 node2-1)
        (conn node5-0 node4-0)
        (conn node0-3 node1-3)
        (conn node3-5 node4-5)
        (conn node6-1 node6-0)
        (conn node4-0 node5-0)
        (locked node4-4)
        (locked node5-3)
        (locked node5-4)
        (locked node2-2)
        (locked node3-3)
        (locked node4-3)
        (locked node2-3)
        (locked node3-2)
        (locked node4-2)
        (locked node5-2)
        (lock-shape node4-2 diamond)
        (lock-shape node5-2 diamond)
        (lock-shape node4-4 diamond)
        (lock-shape node5-4 diamond)
        (lock-shape node3-2 diamond)
        (lock-shape node2-2 diamond)
        (lock-shape node5-3 diamond)
        (lock-shape node4-3 diamond)
        (lock-shape node2-3 diamond)
        (lock-shape node3-3 diamond)
        (open node2-0)
        (open node1-4)
        (open node1-0)
        (open node0-0)
        (open node1-6)
        (open node1-3)
        (open node2-4)
        (open node2-6)
        (open node0-5)
        (open node4-5)
        (open node2-1)
        (open node5-6)
        (open node3-5)
        (open node1-5)
        (open node4-1)
        (open node5-5)
        (open node2-5)
        (open node3-1)
        (open node1-2)
        (open node6-3)
        (open node0-2)
        (open node0-6)
        (open node6-5)
        (open node5-1)
        (open node6-2)
        (open node3-0)
        (open node6-1)
        (open node6-6)
        (open node0-4)
        (open node1-1)
        (open node4-0)
        (open node3-4)
        (open node0-1)
        (open node6-0)
        (open node3-6)
        (open node0-3)
        (open node5-0)
        (open node4-6)
        (open node6-4)
        (key key0)
        (key key3)
        (key key5)
        (key key7)
        (key key10)
        (key key4)
        (key key9)
        (key key6)
        (key key8)
        (key key1)
        (key key2)
        (key-shape key10 triangle)
        (key-shape key9 square)
        (key-shape key5 circle)
        (key-shape key0 diamond)
        (key-shape key6 triangle)
        (key-shape key1 triangle)
        (key-shape key3 square)
        (key-shape key8 diamond)
        (key-shape key7 square)
        (key-shape key2 circle)
        (key-shape key4 square)
        (at key4 node2-4)
        (at key1 node2-4)
        (at key3 node0-2)
        (at key0 node1-4)
        (at key7 node3-0)
        (at key6 node1-5)
        (at key8 node2-2)
        (at key9 node1-4)
        (at key10 node1-1)
        (at key2 node3-2)
        (at key5 node4-3)
        (at-robot node3-4)
    )

    (:goal
        (and (arm-empty ) (place node2-0) (place node1-4) (place node1-0) (place node0-0) (place node2-2) (place node1-6) (place node1-3) (place node2-4) (place node4-3) (place node2-6) (place node0-5) (place node5-2) (place node4-5) (place node4-4) (place node2-1) (place node5-6) (place node3-5) (place node1-5) (place node4-1) (place node5-5) (place node2-5) (place node3-1) (place node1-2) (place node5-4) (place node0-2) (place node0-6) (place node6-3) (place node6-5) (place node5-1) (place node6-2) (place node3-0) (place node2-3) (place node6-1) (place node6-6) (place node0-4) (place node1-1) (place node4-0) (place node5-3) (place node3-4) (place node3-3) (place node0-1) (place node6-0) (place node3-6) (place node0-3) (place node3-2) (place node5-0) (place node4-6) (place node4-2) (place node6-4) (shape circle) (shape diamond) (shape square) (shape triangle) (conn node4-4 node4-5) (conn node1-3 node1-2) (conn node2-1 node3-1) (conn node6-5 node6-4) (conn node6-4 node5-4) (conn node6-3 node6-4) (conn node1-3 node2-3) (conn node1-1 node2-1) (conn node3-2 node3-3) (conn node4-1 node3-1) (conn node5-1 node6-1) (conn node2-3 node2-4) (conn node2-5 node2-4) (conn node5-6 node6-6) (conn node1-2 node1-1) (conn node4-3 node5-3) (conn node4-6 node3-6) (conn node5-5 node5-4) (conn node0-5 node0-4) (conn node0-1 node1-1) (conn node2-5 node3-5) (conn node3-3 node4-3) (conn node4-3 node3-3) (conn node1-6 node2-6) (conn node6-2 node6-1) (conn node5-6 node4-6) (conn node1-0 node1-1) (conn node3-0 node4-0) (conn node2-6 node3-6) (conn node3-5 node3-6) (conn node5-0 node5-1) (conn node6-6 node5-6) (conn node4-1 node4-2) (conn node1-6 node1-5) (conn node5-1 node5-2) (conn node4-6 node5-6) (conn node6-0 node6-1) (conn node1-0 node0-0) (conn node6-6 node6-5) (conn node5-2 node4-2) (conn node2-0 node2-1) (conn node5-1 node4-1) (conn node3-4 node3-3) (conn node5-3 node5-2) (conn node3-3 node2-3) (conn node6-3 node5-3) (conn node2-2 node1-2) (conn node5-5 node4-5) (conn node1-4 node0-4) (conn node2-3 node2-2) (conn node3-3 node3-4) (conn node1-2 node0-2) (conn node1-5 node2-5) (conn node2-0 node3-0) (conn node2-2 node2-3) (conn node2-4 node2-3) (conn node0-1 node0-2) (conn node2-5 node2-6) (conn node2-4 node3-4) (conn node1-1 node1-2) (conn node0-4 node0-3) (conn node3-1 node4-1) (conn node2-5 node1-5) (conn node6-5 node5-5) (conn node5-4 node5-5) (conn node0-4 node1-4) (conn node2-1 node2-2) (conn node1-4 node1-3) (conn node2-1 node2-0) (conn node6-1 node5-1) (conn node6-1 node6-2) (conn node0-0 node0-1) (conn node1-5 node1-4) (conn node1-1 node0-1) (conn node0-2 node0-3) (conn node6-3 node6-2) (conn node1-2 node1-3) (conn node3-2 node3-1) (conn node0-1 node0-0) (conn node4-4 node4-3) (conn node5-3 node4-3) (conn node1-6 node0-6) (conn node2-3 node3-3) (conn node4-5 node3-5) (conn node2-4 node2-5) (conn node3-1 node3-2) (conn node4-2 node3-2) (conn node3-6 node3-5) (conn node6-4 node6-3) (conn node0-5 node1-5) (conn node6-2 node5-2) (conn node2-6 node2-5) (conn node4-5 node5-5) (conn node5-5 node5-6) (conn node3-2 node4-2) (conn node5-4 node4-4) (conn node0-5 node0-6) (conn node4-2 node5-2) (conn node5-3 node6-3) (conn node1-3 node0-3) (conn node3-1 node2-1) (conn node3-4 node3-5) (conn node4-0 node4-1) (conn node5-1 node5-0) (conn node6-2 node6-3) (conn node4-2 node4-1) (conn node3-5 node3-4) (conn node1-3 node1-4) (conn node4-1 node4-0) (conn node1-4 node2-4) (conn node4-4 node3-4) (conn node0-4 node0-5) (conn node1-4 node1-5) (conn node1-5 node1-6) (conn node5-2 node5-3) (conn node4-3 node4-4) (conn node1-0 node2-0) (conn node1-5 node0-5) (conn node0-0 node1-0) (conn node4-5 node4-4) (conn node5-0 node6-0) (conn node1-1 node1-0) (conn node5-4 node6-4) (conn node6-0 node5-0) (conn node5-6 node5-5) (conn node6-4 node6-5) (conn node3-5 node2-5) (conn node3-3 node3-2) (conn node2-3 node1-3) (conn node4-2 node4-3) (conn node3-0 node3-1) (conn node0-3 node0-2) (conn node0-6 node1-6) (conn node3-4 node2-4) (conn node0-2 node1-2) (conn node2-1 node1-1) (conn node4-1 node5-1) (conn node4-4 node5-4) (conn node5-3 node5-4) (conn node3-4 node4-4) (conn node3-2 node2-2) (conn node0-6 node0-5) (conn node2-2 node3-2) (conn node0-3 node0-4) (conn node5-5 node6-5) (conn node5-2 node5-1) (conn node4-3 node4-2) (conn node4-5 node4-6) (conn node5-2 node6-2) (conn node2-4 node1-4) (conn node3-6 node4-6) (conn node0-2 node0-1) (conn node1-2 node2-2) (conn node6-5 node6-6) (conn node2-0 node1-0) (conn node4-0 node3-0) (conn node4-6 node4-5) (conn node2-6 node1-6) (conn node3-1 node3-0) (conn node3-5 node4-5) (conn node3-0 node2-0) (conn node5-4 node5-3) (conn node2-2 node2-1) (conn node5-0 node4-0) (conn node0-3 node1-3) (conn node3-6 node2-6) (conn node6-1 node6-0) (conn node4-0 node5-0) (locked node4-4) (locked node5-3) (locked node5-4) (locked node2-2) (locked node3-3) (locked node4-3) (locked node2-3) (locked node3-2) (locked node4-2) (locked node5-2) (lock-shape node4-2 diamond) (lock-shape node5-2 diamond) (lock-shape node4-3 diamond) (lock-shape node4-4 diamond) (lock-shape node5-4 diamond) (lock-shape node2-2 diamond) (lock-shape node5-3 diamond) (lock-shape node3-2 diamond) (lock-shape node2-3 diamond) (lock-shape node3-3 diamond) (open node2-0) (open node1-4) (open node1-0) (open node0-0) (open node1-6) (open node1-3) (open node2-4) (open node2-6) (open node0-5) (open node4-5) (open node2-1) (open node5-6) (open node3-5) (open node1-5) (open node4-1) (open node5-5) (open node2-5) (open node3-1) (open node1-2) (open node6-3) (open node0-2) (open node0-6) (open node6-5) (open node5-1) (open node6-2) (open node3-0) (open node6-1) (open node6-6) (open node0-4) (open node1-1) (open node4-0) (open node3-4) (open node0-1) (open node6-0) (open node3-6) (open node0-3) (open node5-0) (open node4-6) (open node6-4) (key key0) (key key5) (key key3) (key key10) (key key7) (key key4) (key key9) (key key6) (key key8) (key key1) (key key2) (key-shape key10 triangle) (key-shape key9 square) (key-shape key5 circle) (key-shape key6 triangle) (key-shape key0 diamond) (key-shape key1 triangle) (key-shape key3 square) (key-shape key8 diamond) (key-shape key7 square) (key-shape key2 circle) (key-shape key4 square) (at key4 node2-4) (at key1 node2-4) (at key3 node0-2) (at key7 node3-0) (at key0 node1-4) (at key6 node1-5) (at key8 node2-2) (at key9 node1-4) (at key10 node1-1) (at key2 node3-2) (at key5 node4-3) (at-robot node2-4))
    )

    
    
    
)

