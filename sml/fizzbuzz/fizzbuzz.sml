(* FizzBuzz code kata *)

(*
 * @brief Plays FizzBuzz.
 *
 * @param {Int} number The number to play.
 *
 * @return The FizzBuzz game result for the given number.
 *)
fun play_fizzbuzz (number : int) =
  let
    fun isfizz x = (x mod 3 = 0)
    fun isbuzz x = (x mod 5 = 0)
  in
    case (number, isfizz number, isbuzz number) of
        (_, true, false) => "Fizz"
      | (_, false, true) => "Buzz"
      | (_, true, true)  => "FizzBuzz"
      | (number, _, _)   => Int.toString number
  end
