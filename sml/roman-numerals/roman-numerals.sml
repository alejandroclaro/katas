(* Roman numerals code kata *)

(* Converts an arabic number into a roman number *)
fun to_roman x =
  let
    val alphabet = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
                    ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
                    (  10, "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
                    (   1, "I")]

    fun convert(number, roman) =
      case (List.find (fn (first, _) => number >= first) alphabet) of
          SOME (value, digit) => convert(number - value, roman ^ digit)
        | NONE                => roman
  in
    convert(x, "")
  end
