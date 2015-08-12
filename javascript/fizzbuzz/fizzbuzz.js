/**
 * @brief Indicates wheter the number is in Fizz set.
 *
 * @param  {Integer} number The number to test.
 * @return {Boolean}        True if the number is in the set; otherwise False.
 */
function isFizz (number) {
  return (number % 3) === 0;
}

/**
 * @brief Indicates wheter the number is in Buzz set.
 *
 * @param  {Integer} number The number to test.
 * @return {Boolean}        True if the number is in the set; otherwise False.
 */
function isBuzz (number) {
  return (number % 5) === 0;
}

/**
 * @brief Indicates wheter the String is empty.
 *
 * @param  {String}  str The string to test.
 * @return {Boolean}     True if the string is empty; otherwise False.
 */
function isEmpty (str) {
  return str === '';
}

/**
 * @brief Computes the FizzBuzz game result for the given number.
 *
 * @param  {Integer} number The number to play.
 * @return {Boolean}        The FizzBuzz game result.
 */
module.exports.compute = function (number) {
  var result = '';

  if (isFizz(number))
    result += 'Fizz';

  if (isBuzz(number))
    result += 'Buzz';

  return isEmpty(result) ? number.toString() : result;
}

