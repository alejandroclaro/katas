(ns bob (:use [clojure.string :only [blank? upper-case lower-case]]))

(defn- upper-case? [string]
  (= (upper-case string) string))

(defn- lower-case? [string]
  (= (lower-case string) string))

(defn- yelling? [sentence]
  (and (upper-case? sentence) (not (lower-case? sentence))))

(defn- question? [sentence]
  (.endsWith sentence "?"))

(defn response-for [sentence]
  (cond
    (blank?    sentence) "Fine. Be that way!"
    (yelling?  sentence) "Whoa, chill out!"
    (question? sentence) "Sure."
    :else                "Whatever."))
