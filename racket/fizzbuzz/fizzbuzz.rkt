#lang racket/base

(define (is-fizz? x)
  (= (modulo x 3) 0))

(define (is-buzz? x)
  (= (modulo x 5) 0))

(define (fizzbuzz x)
  (let ([fizz (is-fizz? x)] [buzz (is-buzz? x)])
    (cond
      [(and fizz buzz) "FizzBuzz"]
      [fizz "Fizz"]
      [buzz "Buzz"]
      [else (number->string x)])))

(provide fizzbuzz)