
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem strips-grid-y-2)
    (:domain grid)

    (:objects
        circle diamond key0 key1 key2 key3 key4 key5 key6 key7 key8 key9 node0-0 node0-1 node0-2 node0-3 node0-4 node0-5 node1-0 node1-1 node1-2 node1-3 node1-4 node1-5 node2-0 node2-1 node2-2 node2-3 node2-4 node2-5 node3-0 node3-1 node3-2 node3-3 node3-4 node3-5 node4-0 node4-1 node4-2 node4-3 node4-4 node4-5 node5-0 node5-1 node5-2 node5-3 node5-4 node5-5 square triangle - object
    )

    (:init
        (arm-empty )
        (place node2-0)
        (place node1-4)
        (place node1-0)
        (place node0-0)
        (place node2-2)
        (place node1-3)
        (place node2-4)
        (place node4-3)
        (place node0-5)
        (place node5-2)
        (place node4-5)
        (place node4-4)
        (place node2-1)
        (place node3-5)
        (place node1-5)
        (place node4-1)
        (place node5-5)
        (place node2-5)
        (place node3-1)
        (place node1-2)
        (place node5-4)
        (place node0-2)
        (place node5-1)
        (place node3-0)
        (place node2-3)
        (place node0-4)
        (place node1-1)
        (place node4-0)
        (place node5-3)
        (place node3-4)
        (place node3-3)
        (place node0-1)
        (place node0-3)
        (place node3-2)
        (place node5-0)
        (place node4-2)
        (shape circle)
        (shape square)
        (shape diamond)
        (shape triangle)
        (conn node4-4 node4-5)
        (conn node1-3 node1-2)
        (conn node2-1 node3-1)
        (conn node1-3 node2-3)
        (conn node1-1 node2-1)
        (conn node3-2 node3-3)
        (conn node4-1 node3-1)
        (conn node2-3 node2-4)
        (conn node2-5 node2-4)
        (conn node1-2 node1-1)
        (conn node4-3 node5-3)
        (conn node5-5 node5-4)
        (conn node0-5 node0-4)
        (conn node0-1 node1-1)
        (conn node4-3 node3-3)
        (conn node2-5 node3-5)
        (conn node3-3 node4-3)
        (conn node1-0 node1-1)
        (conn node3-0 node4-0)
        (conn node5-0 node5-1)
        (conn node4-1 node4-2)
        (conn node5-1 node5-2)
        (conn node1-0 node0-0)
        (conn node5-2 node4-2)
        (conn node2-0 node2-1)
        (conn node5-1 node4-1)
        (conn node3-4 node3-3)
        (conn node5-3 node5-2)
        (conn node3-3 node2-3)
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
        (conn node2-4 node3-4)
        (conn node1-1 node1-2)
        (conn node0-4 node0-3)
        (conn node3-1 node4-1)
        (conn node2-5 node1-5)
        (conn node5-4 node5-5)
        (conn node0-4 node1-4)
        (conn node2-1 node2-2)
        (conn node1-4 node1-3)
        (conn node2-1 node2-0)
        (conn node0-0 node0-1)
        (conn node1-5 node1-4)
        (conn node1-1 node0-1)
        (conn node0-2 node0-3)
        (conn node1-2 node1-3)
        (conn node3-2 node3-1)
        (conn node0-1 node0-0)
        (conn node4-4 node4-3)
        (conn node5-3 node4-3)
        (conn node2-3 node3-3)
        (conn node4-5 node3-5)
        (conn node2-4 node2-5)
        (conn node3-1 node3-2)
        (conn node4-2 node3-2)
        (conn node0-5 node1-5)
        (conn node4-5 node5-5)
        (conn node3-2 node4-2)
        (conn node5-4 node4-4)
        (conn node4-2 node5-2)
        (conn node1-3 node0-3)
        (conn node3-1 node2-1)
        (conn node3-4 node3-5)
        (conn node4-0 node4-1)
        (conn node5-1 node5-0)
        (conn node4-2 node4-1)
        (conn node3-5 node3-4)
        (conn node1-3 node1-4)
        (conn node4-1 node4-0)
        (conn node1-4 node2-4)
        (conn node4-4 node3-4)
        (conn node0-4 node0-5)
        (conn node1-4 node1-5)
        (conn node5-2 node5-3)
        (conn node4-3 node4-4)
        (conn node1-0 node2-0)
        (conn node1-5 node0-5)
        (conn node0-0 node1-0)
        (conn node4-5 node4-4)
        (conn node1-1 node1-0)
        (conn node3-5 node2-5)
        (conn node3-3 node3-2)
        (conn node2-3 node1-3)
        (conn node4-2 node4-3)
        (conn node3-0 node3-1)
        (conn node0-3 node0-2)
        (conn node3-4 node2-4)
        (conn node4-1 node5-1)
        (conn node0-2 node1-2)
        (conn node2-1 node1-1)
        (conn node4-4 node5-4)
        (conn node5-3 node5-4)
        (conn node3-4 node4-4)
        (conn node3-2 node2-2)
        (conn node2-2 node3-2)
        (conn node0-3 node0-4)
        (conn node5-2 node5-1)
        (conn node4-3 node4-2)
        (conn node2-4 node1-4)
        (conn node0-2 node0-1)
        (conn node1-2 node2-2)
        (conn node2-0 node1-0)
        (conn node4-0 node3-0)
        (conn node3-1 node3-0)
        (conn node3-0 node2-0)
        (conn node5-4 node5-3)
        (conn node2-2 node2-1)
        (conn node5-0 node4-0)
        (conn node0-3 node1-3)
        (conn node3-5 node4-5)
        (conn node4-0 node5-0)
        (locked node4-4)
        (locked node5-3)
        (locked node3-4)
        (locked node3-3)
        (locked node4-3)
        (locked node3-2)
        (locked node4-2)
        (locked node5-2)
        (lock-shape node5-2 triangle)
        (lock-shape node4-4 triangle)
        (lock-shape node5-3 triangle)
        (lock-shape node3-2 triangle)
        (lock-shape node3-3 triangle)
        (lock-shape node3-4 triangle)
        (lock-shape node4-3 triangle)
        (lock-shape node4-2 triangle)
        (open node2-0)
        (open node1-4)
        (open node1-0)
        (open node0-0)
        (open node2-2)
        (open node1-3)
        (open node2-4)
        (open node0-5)
        (open node4-5)
        (open node2-1)
        (open node3-5)
        (open node1-5)
        (open node4-1)
        (open node5-5)
        (open node2-5)
        (open node3-1)
        (open node1-2)
        (open node5-4)
        (open node0-2)
        (open node5-1)
        (open node3-0)
        (open node2-3)
        (open node0-4)
        (open node1-1)
        (open node4-0)
        (open node0-1)
        (open node0-3)
        (open node5-0)
        (key key0)
        (key key7)
        (key key5)
        (key key3)
        (key key4)
        (key key9)
        (key key6)
        (key key8)
        (key key1)
        (key key2)
        (key-shape key2 square)
        (key-shape key1 circle)
        (key-shape key3 triangle)
        (key-shape key8 square)
        (key-shape key0 diamond)
        (key-shape key7 diamond)
        (key-shape key4 triangle)
        (key-shape key9 diamond)
        (key-shape key6 square)
        (key-shape key5 diamond)
        (at key1 node1-3)
        (at key8 node4-3)
        (at key5 node4-2)
        (at key7 node5-1)
        (at key4 node5-5)
        (at key9 node5-5)
        (at key3 node1-5)
        (at key0 node0-0)
        (at key2 node0-1)
        (at key6 node0-3)
        (at-robot node5-5)
    )

    (:goal
        (and (place node2-0) (place node1-4) (place node1-0) (place node0-0) (place node2-2) (place node1-3) (place node2-4) (place node4-3) (place node0-5) (place node5-2) (place node4-5) (place node4-4) (place node2-1) (place node3-5) (place node1-5) (place node4-1) (place node5-5) (place node2-5) (place node3-1) (place node1-2) (place node5-4) (place node0-2) (place node5-1) (place node3-0) (place node2-3) (place node0-4) (place node1-1) (place node4-0) (place node5-3) (place node3-4) (place node3-3) (place node0-1) (place node0-3) (place node3-2) (place node5-0) (place node4-2) (shape circle) (shape diamond) (shape square) (shape triangle) (conn node4-4 node4-5) (conn node1-3 node1-2) (conn node2-1 node3-1) (conn node1-3 node2-3) (conn node1-1 node2-1) (conn node3-2 node3-3) (conn node4-1 node3-1) (conn node2-3 node2-4) (conn node2-5 node2-4) (conn node1-2 node1-1) (conn node4-3 node5-3) (conn node5-5 node5-4) (conn node0-5 node0-4) (conn node0-1 node1-1) (conn node4-3 node3-3) (conn node2-5 node3-5) (conn node3-3 node4-3) (conn node1-0 node1-1) (conn node3-0 node4-0) (conn node5-0 node5-1) (conn node4-1 node4-2) (conn node5-1 node5-2) (conn node1-0 node0-0) (conn node5-2 node4-2) (conn node2-0 node2-1) (conn node5-1 node4-1) (conn node3-4 node3-3) (conn node5-3 node5-2) (conn node3-3 node2-3) (conn node2-2 node1-2) (conn node5-5 node4-5) (conn node1-4 node0-4) (conn node2-3 node2-2) (conn node3-3 node3-4) (conn node1-2 node0-2) (conn node1-5 node2-5) (conn node2-0 node3-0) (conn node2-2 node2-3) (conn node2-4 node2-3) (conn node0-1 node0-2) (conn node2-4 node3-4) (conn node1-1 node1-2) (conn node0-4 node0-3) (conn node3-1 node4-1) (conn node2-5 node1-5) (conn node5-4 node5-5) (conn node0-4 node1-4) (conn node2-1 node2-2) (conn node1-4 node1-3) (conn node2-1 node2-0) (conn node0-0 node0-1) (conn node1-5 node1-4) (conn node1-1 node0-1) (conn node0-2 node0-3) (conn node1-2 node1-3) (conn node3-2 node3-1) (conn node0-1 node0-0) (conn node4-4 node4-3) (conn node5-3 node4-3) (conn node2-3 node3-3) (conn node4-5 node3-5) (conn node2-4 node2-5) (conn node3-1 node3-2) (conn node4-2 node3-2) (conn node0-5 node1-5) (conn node4-5 node5-5) (conn node3-2 node4-2) (conn node5-4 node4-4) (conn node4-2 node5-2) (conn node1-3 node0-3) (conn node3-1 node2-1) (conn node3-4 node3-5) (conn node4-0 node4-1) (conn node5-1 node5-0) (conn node4-2 node4-1) (conn node3-5 node3-4) (conn node1-3 node1-4) (conn node4-1 node4-0) (conn node1-4 node2-4) (conn node4-4 node3-4) (conn node0-4 node0-5) (conn node1-4 node1-5) (conn node5-2 node5-3) (conn node4-3 node4-4) (conn node1-0 node2-0) (conn node1-5 node0-5) (conn node0-0 node1-0) (conn node4-5 node4-4) (conn node1-1 node1-0) (conn node3-5 node2-5) (conn node3-3 node3-2) (conn node2-3 node1-3) (conn node4-2 node4-3) (conn node3-0 node3-1) (conn node0-3 node0-2) (conn node3-4 node2-4) (conn node4-1 node5-1) (conn node0-2 node1-2) (conn node2-1 node1-1) (conn node4-4 node5-4) (conn node5-3 node5-4) (conn node3-4 node4-4) (conn node3-2 node2-2) (conn node2-2 node3-2) (conn node0-3 node0-4) (conn node5-2 node5-1) (conn node4-3 node4-2) (conn node2-4 node1-4) (conn node0-2 node0-1) (conn node1-2 node2-2) (conn node2-0 node1-0) (conn node4-0 node3-0) (conn node3-1 node3-0) (conn node3-0 node2-0) (conn node5-4 node5-3) (conn node2-2 node2-1) (conn node5-0 node4-0) (conn node0-3 node1-3) (conn node3-5 node4-5) (conn node4-0 node5-0) (locked node4-4) (locked node5-3) (locked node3-4) (locked node3-3) (locked node4-3) (locked node3-2) (locked node4-2) (locked node5-2) (lock-shape node5-2 triangle) (lock-shape node4-4 triangle) (lock-shape node5-3 triangle) (lock-shape node3-2 triangle) (lock-shape node3-3 triangle) (lock-shape node3-4 triangle) (lock-shape node4-3 triangle) (lock-shape node4-2 triangle) (open node2-0) (open node1-4) (open node1-0) (open node0-0) (open node2-2) (open node1-3) (open node2-4) (open node0-5) (open node4-5) (open node2-1) (open node3-5) (open node1-5) (open node4-1) (open node5-5) (open node2-5) (open node3-1) (open node1-2) (open node5-4) (open node0-2) (open node5-1) (open node3-0) (open node2-3) (open node0-4) (open node1-1) (open node4-0) (open node0-1) (open node0-3) (open node5-0) (key key0) (key key5) (key key7) (key key3) (key key4) (key key9) (key key6) (key key8) (key key1) (key key2) (key-shape key2 square) (key-shape key1 circle) (key-shape key3 triangle) (key-shape key8 square) (key-shape key0 diamond) (key-shape key7 diamond) (key-shape key4 triangle) (key-shape key9 diamond) (key-shape key6 square) (key-shape key5 diamond) (at key1 node1-3) (at key8 node4-3) (at key5 node4-2) (at key7 node5-1) (at key9 node5-5) (at key3 node1-5) (at key0 node0-0) (at key2 node0-1) (at key6 node0-3) (at-robot node5-5) (holding key4))
    )

    
    
    
)

