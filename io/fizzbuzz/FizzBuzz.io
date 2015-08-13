#
# @brief FizzBuzz code kata.
#
FizzBuzz := Object clone do (
  ##
  # @brief Indicates wheter the given number is in Fizz set or not.
  #
  # @param {Int} number The number to check.
  # @return True if the number is in the set; otherwise False.
  ##
  isFizz ::= method(number, number mod(3) == 0)

  ##
  # @brief Indicates wheter the given number is in Buzz set or not.
  #
  # @param {Int} number The number to check.
  # @return True if the number is in the set; otherwise False.
  ##
  isBuzz ::= method(number, number mod(5) == 0)

  ##
  # @brief Plays FizzBuzz.
  #
  # @param {Int} number The number to play.
  # @return The FizzBuzz game result for the given number.
  ##
  play ::= method(number,
    result := if(isFizz(number), "Fizz", "")
    result := if(isBuzz(number), String with(result, "Buzz"), result)
    return if(result isEmpty, number asString, result)
  )
)
