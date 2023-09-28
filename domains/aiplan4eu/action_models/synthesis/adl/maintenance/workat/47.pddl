
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Instance file automatically generated by the Tarski FSTRIPS writer
;;; 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (problem maintenance-scheduling-1-3-10-10-2-2)
    (:domain maintenance-scheduling-domain)

    (:objects
        ber fra ham - airport
        d1 d10 d11 d2 d3 d4 d5 d6 d7 d8 d9 - day
        ap1 ap10 ap2 ap3 ap4 ap5 ap6 ap7 ap8 ap9 - plane
    )

    (:init
        (today d10)
        (today d1)
        (today d9)
        (today d2)
        (today d3)
        (at ap6 d5 ber)
        (at ap5 d5 ham)
        (at ap4 d7 fra)
        (at ap1 d7 ham)
        (at ap6 d6 ber)
        (at ap5 d7 fra)
        (at ap2 d4 ham)
        (at ap8 d3 ham)
        (at ap3 d3 fra)
        (at ap7 d8 fra)
        (at ap9 d7 ber)
        (at ap1 d8 fra)
        (at ap2 d9 fra)
        (at ap8 d8 fra)
        (at ap9 d2 ham)
        (at ap10 d5 ham)
        (at ap4 d10 ber)
        (at ap10 d6 ham)
        (at ap7 d8 ham)
        (at ap3 d5 ber)
        (done ap8)
        (done ap3)
        (done ap10)
        (done ap5)
        (done ap7)
        (done ap4)
        (done ap6)
        (done ap2)
        (done ap1)
    )

    (:goal
        (and (today d10) (today d1) (today d9) (today d3) (at ap6 d5 ber) (at ap5 d5 ham) (at ap4 d7 fra) (at ap1 d7 ham) (at ap6 d6 ber) (at ap5 d7 fra) (at ap2 d4 ham) (at ap8 d3 ham) (at ap3 d3 fra) (at ap7 d8 fra) (at ap9 d7 ber) (at ap1 d8 fra) (at ap2 d9 fra) (at ap8 d8 fra) (at ap9 d2 ham) (at ap10 d5 ham) (at ap4 d10 ber) (at ap10 d6 ham) (at ap7 d8 ham) (at ap3 d5 ber) (done ap8) (done ap3) (done ap10) (done ap9) (done ap5) (done ap4) (done ap6) (done ap1) (done ap2) (done ap7))
    )

    
    
    
)

