#
# @brief FizzBuzz code kata unit tests.
#
FizzBuzzTest := UnitTest clone do (
  fizzbuzz := FizzBuzz clone

  testPlayWhenNoDivisibleByThreeOrFive := method(
    assertEquals(fizzbuzz play(1), "1")
    assertEquals(fizzbuzz play(2), "2")
    assertEquals(fizzbuzz play(4), "4")
  )
  testPlayWhenDivisibleByThree := method(
    assertEquals(fizzbuzz play(3), "Fizz")
    assertEquals(fizzbuzz play(9), "Fizz")
  )
  testPlayWhenDivisibleByFive := method(
    assertEquals(fizzbuzz play(5), "Buzz")
    assertEquals(fizzbuzz play(10), "Buzz")
  )
  testPlayWhenDivisibleByThreeAndByFive := method(
    assertEquals(fizzbuzz play(15), "FizzBuzz")
    assertEquals(fizzbuzz play(150), "FizzBuzz")
  )
)
