(ns anagram (:use [clojure.string :only [lower-case]]))

(defn- same-letters? [lhs rhs]
  (= (sort lhs) (sort rhs)))

(defn- anagram? [word candiate]
  (let [lhs (lower-case word) rhs (lower-case candiate)]
    (and (same-letters? lhs rhs) (not= lhs rhs))))

(defn anagrams-for [word coll]
  (filterv #(anagram? word %1) coll))
