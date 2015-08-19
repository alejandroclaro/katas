#lang racket/base

(define (is-fizz? x)
  (zero? (modulo x 3)))

(define (is-buzz? x)
  (zero? (modulo x 5)))

(define (fizzbuzz x)
  (let ([fizz (is-fizz? x)] [buzz (is-buzz? x)])
    (cond
      [(and fizz buzz) "FizzBuzz"]
      [fizz "Fizz"]
      [buzz "Buzz"]
      [else (number->string x)])))

(provide fizzbuzz)