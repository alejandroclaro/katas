(* FizzBuzz kata unit tests *)

use "fizzbuzz/fizzbuzz.sml";

(* It should return Fizz if input is divisible by 3 *)
assertEqual (play_fizzbuzz 3) "Fizz" "3  => Fizz";
assertEqual (play_fizzbuzz 6) "Fizz" "6  => Fizz";
assertEqual (play_fizzbuzz 9) "Fizz" "9  => Fizz";

(* It should return Buzz if input is divisible by 5 *)
assertEqual (play_fizzbuzz 5)  "Buzz" "5  => Buzz";
assertEqual (play_fizzbuzz 10) "Buzz" "10 => Buzz";

(* It should return FizzBuzz if input is divisible by 3 and 5 *)
assertEqual (play_fizzbuzz 15) "FizzBuzz" "15 => FizzBuzz";

(* It should return the same input if input is NOT divisible by 3 or 5 *)
assertEqual (play_fizzbuzz 1) "1" "1  => 1";
assertEqual (play_fizzbuzz 2) "2" "2  => 2";
assertEqual (play_fizzbuzz 4) "4" "4  => 4";
assertEqual (play_fizzbuzz 7) "7" "7  => 7";
assertEqual (play_fizzbuzz 8) "8" "8  => 8";
