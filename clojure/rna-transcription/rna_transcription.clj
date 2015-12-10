(ns rna-transcription)

(defn- transcribe [nucleotide]
  (case nucleotide
    \C \G
    \G \C
    \A \U
    \T \A
    (assert false)))

(defn to-rna [dna-strand]
  (apply str (map transcribe dna-strand)))
