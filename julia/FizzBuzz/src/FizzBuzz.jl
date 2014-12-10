#
# @brief FizzBuzz code kata.
#

module FizzBuzz
export answer_for

#
# @brief Plays FizzBuzz for the specified number of iterations starting with the number 1.
#
# @param iterations The number of iterations to play.
#
function play_fizzbuzz(iterations::Integer)
  for i in [1:iterations]
    println(answer_for(i))
  end
end

#
# @brief Computes the FizzBuzz answer for the specified number.
#
# @param number The number to play.
#
# @return FizzBuzz  if the numbers is multiple of both three and five;
#         Fizz      if the numbers is multiple of three;
#         Buzz      if the numbers is multiple of five;
#         otherwise the number as a string;
#
function answer_for(number::Integer)
  result = ""

  if isfizz(number)
    result = "Fizz"
  end

  if isbuzz(number)
    result = result * "Buzz"
  end

  if isempty(result)
    return string(number)
  else
    return result
  end
end

#
# @brief Indicates whether the number is Fizz.
#
# @param number The number to test.
#
# @return true if the number is Fizz; otherwise false.
#
function isfizz(number::Integer)
  rem(number, 3) == 0 || findfirst(string(number), '3') != 0
end

#
# @brief Indicates whether the number is Buzz.
#
# @param number The number to test.
#
# @return true if the number is Buzz; otherwise false.
#
function isbuzz(number::Integer)
  rem(number, 5) == 0 || findfirst(string(number), '5') != 0
end

end # module FizzBuzz
