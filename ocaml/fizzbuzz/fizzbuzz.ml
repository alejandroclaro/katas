(* FizzBuzz kata *)

let isfizz x = (x mod 3) = 0
let isbuzz x = (x mod 5) = 0

(*
 * Plays FizzBuzz game.
 *
 * @param {Int} x The integer to play.
 * @return {String} The play result.
 *)
let play x = match (isfizz x, isbuzz x) with
  | (true,  true)  -> "FizzBuzz"
  | (true,  false) -> "Fizz"
  | (false, true)  -> "Buzz"
  | _              -> string_of_int x
