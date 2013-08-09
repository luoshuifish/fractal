;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-intermediate-reader.ss" "lang")((modname circle-fractal-starter) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f ())))
;name:yuyongjiang
;school：BUAA
;mail:yuyongjianghit@163.com

(require 2htdp/image)
(define STEP (/ 2 5))
(define TRIVIAL-SIZE 10)

(define little (above  (circle 12 "solid" "blue") 
        (beside (rotate 90 (circle 12  "solid" "blue")) (circle 30 "solid" "blue") (rotate -90 (circle 12 "solid" "blue")))))


(define big (above  little 
        (beside (rotate 90 little) (circle 75 "solid" "blue") (rotate -90 little))))


(define (circle-fractal-temp size)
  (if (<= size TRIVIAL-SIZE)
      (circle size "solid" "blue")
      (local [(define sub (circle-fractal-temp (* STEP size)))]
        (above  sub 
                (beside (rotate 90 sub) (circle size "solid" "blue") (rotate -90 sub))
                ))))

(define (circle-fractal size)
      (local [(define sub (circle-fractal-temp  (* STEP size)))]
            (above  sub 
                (beside (rotate 90 sub) (circle size "solid" "blue") (rotate -90 sub))
                (rotate 180 sub))
            ))
      
      






        
      
      

        



