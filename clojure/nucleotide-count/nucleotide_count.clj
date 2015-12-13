(ns nucleotide-count (:refer-clojure :exclude [count]))

(def ^:private dna-nucleotides {\A 0 \T 0 \C 0 \G 0})

(defn nucleotide-counts [strand]
  (merge dna-nucleotides (frequencies strand)))

(defn count [nucleotide strand]
  (assert (contains? dna-nucleotides nucleotide))
  (get (nucleotide-counts strand) nucleotide))

