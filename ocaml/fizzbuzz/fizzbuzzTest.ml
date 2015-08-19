(* FizzBuzz kata unit tests *)
open OUnit;;

let fixture = "FizzBuzz" >:::
[
  "should produce the input if input is NOT divisible by 3 or 5" >:: (fun () ->
    assert_equal "1" (Fizzbuzz.play 1);
    assert_equal "2" (Fizzbuzz.play 2);
    assert_equal "4" (Fizzbuzz.play 4);
    assert_equal "7" (Fizzbuzz.play 7);
    assert_equal "8" (Fizzbuzz.play 8);
  );
  "should produce Fizz if input is divisible by 3" >:: (fun () ->
    assert_equal "Fizz" (Fizzbuzz.play 3);
    assert_equal "Fizz" (Fizzbuzz.play 6);
    assert_equal "Fizz" (Fizzbuzz.play 9)
  );
  "should produce Buzz if input is divisible by 5" >:: (fun () ->
    assert_equal "Buzz" (Fizzbuzz.play 5);
    assert_equal "Buzz" (Fizzbuzz.play 10)
  );
  "should produce FizzBuzz if input is divisible by 3 and 5" >:: (fun () ->
    assert_equal "FizzBuzz" (Fizzbuzz.play 15);
    assert_equal "FizzBuzz" (Fizzbuzz.play 30);
  )
];;

let _ = run_test_tt_main fixture
