/*
 * @brief Roman numerals kata.
 */

var ALPHABET =
[
  [1000, "M"], [900, "CM"], [500, "D"], [400, "CD"],
  [ 100, "C"], [ 90, "XC"], [ 50, "L"], [ 40, "XL"],
  [  10, "X"], [  9, "IX"], [  5, "V"], [  4, "IV"],
  [   1, "I"]
];

/**
 * Find the next roman digit
 *
 * @param  {Number} number The arabic number
 * @return {Object}        The value/symbol digit information
 */
function findNextDigit(number)
{
  for (var i = 0; i < ALPHABET.length; ++i)
  {
    digit = ALPHABET[i];

    if (digit[0] <= number)
      return { value: digit[0], symbol: digit[1] };
  }

  return { value: 0, symbol: "" };
}

/**
 * Convert the given number into it's roman string representation
 *
 * @param  {Number} number The number to convert
 * @param  {String} result The result accumulator
 * @return {String}        The roman number representation
 */
function toRoman(number, result)
{
  if (number <= 0)
    return result;

  digit = findNextDigit(number);

  return toRoman(number - digit.value, result.concat(digit.symbol));
}

/**
 * Convert the given number into it's roman string representation
 *
 * @param  {Number} number The number to convert
 * @return {String}        The roman number representation
 */
module.exports.toRoman = function(number)
{
  return toRoman(number, "");
}
