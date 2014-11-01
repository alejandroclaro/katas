; Roman numerals code kata.
(ns roman-numerals)

(def alphabet (sorted-map-by > 1000 "M" 900 "CM" 500 "D" 400 "CD"
                                100 "C"  90 "XC"  50 "L"  40 "XL"
                                 10 "X"   9 "IX"   5 "V"   4 "IV"
                                  1 "I"   0 ""))

(defn find-closest-symbol [x]
  (some #(when (>= x (key %)) %) alphabet))

(defn to-roman [x]
  (loop [n x result ""]
    (if (> n 0)
      (let [[value symbol] (find-closest-symbol n)] (recur (- n value) (str result symbol)))
      result)))
