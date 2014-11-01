; Roman numerals code kata unit tests.
(ns test-roman-numerals
  (:use midje.sweet)
  (:use roman-numerals))

(facts "Roman numerals have 7 digits (I, V, X, L, C, D, M) that has direct arabic correspondence."

  (fact "1 => I"
    (to-roman 1) => "I")

  (fact "5 => V"
    (to-roman 5) => "V")

  (fact "10 => X"
    (to-roman 10) => "X")

  (fact "50 => L"
    (to-roman 50) => "L")

  (fact "100 => C"
    (to-roman 100) => "C")

  (fact "500 => D"
    (to-roman 500) => "D")

  (fact "1000 => M"
    (to-roman 1000) => "M"))


(facts "Roman numerals can't have more than three of the same symbol in a row."

  (fact "4 => IV"
    (to-roman 4) => "IV")

  (fact "40 => XL"
    (to-roman 40) => "XL")

  (fact "400 => CD"
    (to-roman 400) => "CD")

  (fact "9 => IX"
    (to-roman 9) => "IX")

  (fact "90 => XC"
    (to-roman 90) => "XC")

  (fact "900 => CM"
    (to-roman 900) => "CM"))

(facts "Roman numerals are built by composition."

  (fact "2 => II"
    (to-roman 2) => "II")

  (fact "3 => III"
    (to-roman 3) => "III")

  (fact "6 => VI"
    (to-roman 6) => "VI")

  (fact "2378 => MMCCCLXXVIII"
    (to-roman 2378) => "MMCCCLXXVIII"))
