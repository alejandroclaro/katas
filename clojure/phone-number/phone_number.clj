(ns phone-number)

(defn- is-valid? [phone]
  (= (count phone) 10))

(defn- can-fix? [phone]
  (and (= (count phone) 11) (= (first phone) \1)))

(defn- fix [phone]
  (subs phone 1))

(defn- digits [phone]
  (apply str (filter #(Character/isDigit %) phone)))

(defn number [phone]
  (let [n (digits phone)]
    (cond
      (is-valid? n) n 
      (can-fix?  n) (fix n)
      :else         "0000000000")))

(defn area-code [phone]
  (subs (number phone) 0 3))

(defn pretty-print [phone]
  (let [n (number phone)]
    (format "(%s) %s-%s" (subs n 0 3) (subs n 3 6) (subs n 6 10))))

