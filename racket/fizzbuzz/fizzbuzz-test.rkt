#lang racket/base

(require rackunit "fizzbuzz.rkt")

(check-equal? (fizzbuzz 1)  "1"        "should produce 1 when input is 1.")
(check-equal? (fizzbuzz 2)  "2"        "should produce 2 when input is 2.")
(check-equal? (fizzbuzz 4)  "4"        "should produce 4 when input is 4.")

(check-equal? (fizzbuzz 3)  "Fizz"     "should produce Fizz when input is 3.")
(check-equal? (fizzbuzz 6)  "Fizz"     "should produce Fizz when input is 6.")
(check-equal? (fizzbuzz 9)  "Fizz"     "should produce Fizz when input is 9.")

(check-equal? (fizzbuzz 5)  "Buzz"     "should produce Buzz when input is 5.")
(check-equal? (fizzbuzz 10) "Buzz"     "should produce Buzz when input is 10.")

(check-equal? (fizzbuzz 15) "FizzBuzz" "should produce FizzBuzz when input is 15.")