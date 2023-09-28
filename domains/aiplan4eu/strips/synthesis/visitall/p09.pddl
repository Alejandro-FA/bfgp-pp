(define (problem visitall_9)
  (:domain visitall)
  (:objects r1 r2 r3 r4 r5 r6 r7 r8 r9 r10 - row c1 c2 c3 c4 c5 c6 c7 c8 c9 c10 - column)
  (:init (at_row r1)(at_column c1)(visited r1 c1)
    (adjacent_rows r1 r2)    
(adjacent_rows r2 r3)    
(adjacent_rows r3 r4)    
(adjacent_rows r4 r5)    
(adjacent_rows r5 r6)    
(adjacent_rows r6 r7)    
(adjacent_rows r7 r8)    
(adjacent_rows r8 r9)    
(adjacent_rows r9 r10)
    (adjacent_columns c1 c2)    
(adjacent_columns c2 c3)    
(adjacent_columns c3 c4)    
(adjacent_columns c4 c5)    
(adjacent_columns c5 c6)    
(adjacent_columns c6 c7)    
(adjacent_columns c7 c8)    
(adjacent_columns c8 c9)    
(adjacent_columns c9 c10))
  (:goal (and 
    (visited r1 c1)
    (visited r1 c2)
    (visited r1 c3)
    (visited r1 c4)
    (visited r1 c5)
    (visited r1 c6)
    (visited r1 c7)
    (visited r1 c8)
    (visited r1 c9)
    (visited r1 c10)
    (visited r2 c1)
    (visited r2 c2)
    (visited r2 c3)
    (visited r2 c4)
    (visited r2 c5)
    (visited r2 c6)
    (visited r2 c7)
    (visited r2 c8)
    (visited r2 c9)
    (visited r2 c10)
    (visited r3 c1)
    (visited r3 c2)
    (visited r3 c3)
    (visited r3 c4)
    (visited r3 c5)
    (visited r3 c6)
    (visited r3 c7)
    (visited r3 c8)
    (visited r3 c9)
    (visited r3 c10)
    (visited r4 c1)
    (visited r4 c2)
    (visited r4 c3)
    (visited r4 c4)
    (visited r4 c5)
    (visited r4 c6)
    (visited r4 c7)
    (visited r4 c8)
    (visited r4 c9)
    (visited r4 c10)
    (visited r5 c1)
    (visited r5 c2)
    (visited r5 c3)
    (visited r5 c4)
    (visited r5 c5)
    (visited r5 c6)
    (visited r5 c7)
    (visited r5 c8)
    (visited r5 c9)
    (visited r5 c10)
    (visited r6 c1)
    (visited r6 c2)
    (visited r6 c3)
    (visited r6 c4)
    (visited r6 c5)
    (visited r6 c6)
    (visited r6 c7)
    (visited r6 c8)
    (visited r6 c9)
    (visited r6 c10)
    (visited r7 c1)
    (visited r7 c2)
    (visited r7 c3)
    (visited r7 c4)
    (visited r7 c5)
    (visited r7 c6)
    (visited r7 c7)
    (visited r7 c8)
    (visited r7 c9)
    (visited r7 c10)
    (visited r8 c1)
    (visited r8 c2)
    (visited r8 c3)
    (visited r8 c4)
    (visited r8 c5)
    (visited r8 c6)
    (visited r8 c7)
    (visited r8 c8)
    (visited r8 c9)
    (visited r8 c10)
    (visited r9 c1)
    (visited r9 c2)
    (visited r9 c3)
    (visited r9 c4)
    (visited r9 c5)
    (visited r9 c6)
    (visited r9 c7)
    (visited r9 c8)
    (visited r9 c9)
    (visited r9 c10)
    (visited r10 c1)
    (visited r10 c2)
    (visited r10 c3)
    (visited r10 c4)
    (visited r10 c5)
    (visited r10 c6)
    (visited r10 c7)
    (visited r10 c8)
    (visited r10 c9)
    (visited r10 c10))))
