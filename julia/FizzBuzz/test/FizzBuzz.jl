#
# @brief FizzBuzz kata unit tests.
#

@test FizzBuzz.answer_for(1) == "1"
@test FizzBuzz.answer_for(2) == "2"
@test FizzBuzz.answer_for(3) == "Fizz"
@test FizzBuzz.answer_for(4) == "4"
@test FizzBuzz.answer_for(5) == "Buzz"
@test FizzBuzz.answer_for(9) == "Fizz"
@test FizzBuzz.answer_for(10) == "Buzz"
@test FizzBuzz.answer_for(15) == "FizzBuzz"
@test FizzBuzz.answer_for(90) == "FizzBuzz"

@test FizzBuzz.answer_for(23) == "Fizz"
@test FizzBuzz.answer_for(52) == "Buzz"
@test FizzBuzz.answer_for(53) == "FizzBuzz"
