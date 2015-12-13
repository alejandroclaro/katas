(ns beer-song (:use [clojure.string :only [capitalize join]]))

(defn- bottles [number]
  (cond 
    (> number 1) (format "%d bottles" number)
    (= number 1) "1 bottle"
    (= number 0) "no more bottles"
    :else        "99 bottles"))

(defn- action [number]
  (cond
    (= number 0) "Go to the store and buy some more"
    (= number 1) "Take it down and pass it around"
    :else        "Take one down and pass it around"))

(defn- bottles-of-beer [number]
  (format "%s of beer" (bottles number)))

(defn verse [number]
 (format "%s on the wall, %s.\n%s, %s on the wall.\n"
   (capitalize (bottles-of-beer number))
   (bottles-of-beer number)
   (action number)
   (bottles-of-beer (dec number))))

(defn sing 
  ([verses]     (sing verses 0))
  ([first last] (join "\n" (map verse (range first (dec last) -1)))))

