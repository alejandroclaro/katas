; Roman numerals code kata unit tests.
(ns test-roman-numerals
  (:use midje.sweet)
  (:use roman-numerals))

(facts "About decimal to roman number conversion."

  (fact "1 => I"
    (to-roman 1) => "I")

  (fact "2 => II"
    (to-roman 2) => "II"))
