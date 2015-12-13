(ns point-mutations)

(defn- distance [a b]
  (count (filter false? (map = a b))))

(defn hamming-distance [a b]
  (when (= (count a) (count b))
    (distance a b)))

