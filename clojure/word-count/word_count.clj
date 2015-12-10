(ns word-count (:use [clojure.string :only (lower-case split)]))

(defn- get-words [string]
  (split string #"\W+"))

(defn word-count [string]
  (let [words (get-words (lower-case string))]
    (frequencies words)))
