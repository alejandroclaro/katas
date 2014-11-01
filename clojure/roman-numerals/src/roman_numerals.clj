; Roman numerals code kata.
(ns roman-numerals)

(def alphabet
  (sorted-map-by > 1000 "M" 900 "CM" 500 "D" 400 "CD"
                    100 "C"  90 "XC"  50 "L"  40 "XL"
                     10 "X"   9 "IX"   5 "V"   4 "IV"
                      1 "I"   0 ""))

(defn to-roman-step [x result]
  (if (= x 0)
    result
    (let [[k v] (some #(when (>= x (key %)) %) alphabet)] (to-roman-step (- x k) (str result v)))))

(defn to-roman [x]
  (to-roman-step x ""))
