;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname lambdathelion) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)

(define lmbda
 (overlay/xy
  (rotate 60 
     (rectangle 220 50 "solid" "goldenrod"));left (long) side of lambda
  75 50
  (rotate -60 
     (rectangle 160 50 "solid" "goldenrod")) ;right (short) side of lambda
  )
 )

(define eye ;makes single eye
  (overlay
     (circle 5 "solid" "black") ;inner eye
     (circle 10 "solid" "white") ;outer eye
  )
)

(define mouth
  (overlay/offset
   (isosceles-triangle 10 250 "solid" "black") ;nose
   0 9
   (overlay/offset
    (line 0 10 "black") ;vertical line
    0 5
    (line 20 0 "black") ;horizontal "mouth" line
    )
   )
 )

(define face
 (overlay/offset
  (overlay/xy
   eye ;left eye
   30 0 
   eye)
  0 25 ;right eye
  mouth ;mouth/nose
  )
)

(define paws
  (overlay/offset
   (rotate -30 ;right paw
    (overlay/offset
     (line 0 20 "black") ;1st toe line
     20 0 
     (line 0 20 "black") ;2nd toe line
    )
   )
   150 0
   (rotate 30 ;left paw
    (overlay/offset
     (line 0 20 "black") ;1st toe line
     20 0
     (line 0 20 "black") ;2nd toe line
    )
   )
  )
)

(define mane
  (overlay
   (circle 35 "solid" "goldenrod") ;face
   (circle 60 "solid" "chocolate") ;mane
  )
)

(define ll
  (flip-horizontal
    (overlay/offset ;overlay ordering is front first, back last
     paws           ;order here: paws, mane, face, lambda
     0 -84
     (overlay/offset 
      (overlay face mane)
      0 0
      lmbda
     )
     )
  )
)




