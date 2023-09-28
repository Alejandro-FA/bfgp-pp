
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem maintenance-scheduling-1-3-15-20-2-2)
    (:domain maintenance-scheduling-domain)

    (:objects
        ber fra ham - airport
        d1 d10 d11 d12 d13 d14 d15 d16 d2 d3 d4 d5 d6 d7 d8 d9 - day
        ap1 ap10 ap11 ap12 ap13 ap14 ap15 ap16 ap17 ap18 ap19 ap2 ap20 ap3 ap4 ap5 ap6 ap7 ap8 ap9 - plane
    )

    (:init
        (today d5)
        (today d9)
        (today d2)
        (today d7)
        (today d11)
        (today d8)
        (at ap5 d10 ber)
        (at ap9 d9 ham)
        (at ap1 d15 ham)
        (at ap18 d10 ham)
        (at ap6 d3 ber)
        (at ap13 d5 ber)
        (at ap19 d13 ham)
        (at ap18 d15 ber)
        (at ap7 d6 ham)
        (at ap14 d3 fra)
        (at ap16 d8 ham)
        (at ap20 d1 ber)
        (at ap1 d15 ber)
        (at ap20 d9 ham)
        (at ap16 d6 ham)
        (at ap11 d14 ber)
        (at ap5 d3 ber)
        (at ap17 d6 ham)
        (at ap13 d4 fra)
        (at ap10 d4 fra)
        (at ap3 d15 ber)
        (at ap17 d5 fra)
        (at ap14 d10 fra)
        (at ap8 d9 ber)
        (at ap12 d9 ham)
        (at ap9 d1 ber)
        (at ap6 d8 ham)
        (at ap2 d2 ham)
        (at ap4 d4 fra)
        (at ap3 d10 ber)
        (at ap7 d10 ber)
        (at ap11 d12 ber)
        (at ap15 d15 fra)
        (at ap15 d1 ham)
        (at ap2 d14 ber)
        (at ap12 d12 ber)
        (at ap19 d8 fra)
        (at ap8 d15 ber)
        (at ap4 d3 ham)
        (done ap17)
        (done ap13)
        (done ap3)
        (done ap8)
        (done ap2)
        (done ap10)
        (done ap16)
        (done ap11)
        (done ap12)
        (done ap5)
        (done ap15)
        (done ap7)
        (done ap4)
        (done ap18)
        (done ap6)
        (done ap1)
        (done ap19)
        (done ap14)
    )

    (:goal
        (and (today d5) (today d2) (today d7) (today d11) (today d8) (at ap5 d10 ber) (at ap9 d9 ham) (at ap1 d15 ham) (at ap18 d10 ham) (at ap6 d3 ber) (at ap13 d5 ber) (at ap19 d13 ham) (at ap18 d15 ber) (at ap7 d6 ham) (at ap14 d3 fra) (at ap16 d8 ham) (at ap20 d1 ber) (at ap1 d15 ber) (at ap20 d9 ham) (at ap16 d6 ham) (at ap11 d14 ber) (at ap5 d3 ber) (at ap17 d6 ham) (at ap13 d4 fra) (at ap10 d4 fra) (at ap3 d15 ber) (at ap17 d5 fra) (at ap14 d10 fra) (at ap8 d9 ber) (at ap12 d9 ham) (at ap9 d1 ber) (at ap6 d8 ham) (at ap2 d2 ham) (at ap4 d4 fra) (at ap3 d10 ber) (at ap7 d10 ber) (at ap11 d12 ber) (at ap15 d15 fra) (at ap15 d1 ham) (at ap2 d14 ber) (at ap12 d12 ber) (at ap19 d8 fra) (at ap8 d15 ber) (at ap4 d3 ham) (done ap13) (done ap3) (done ap9) (done ap5) (done ap15) (done ap19) (done ap8) (done ap12) (done ap1) (done ap17) (done ap11) (done ap20) (done ap4) (done ap6) (done ap14) (done ap7) (done ap10) (done ap16) (done ap18) (done ap2))
    )

    
    
    
)

