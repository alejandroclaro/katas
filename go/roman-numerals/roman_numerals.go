/**
 * @brief Roman numerals kata.
 */
package roman_numerals

/* IMPORTS *******************************************************************/

import "bytes"

/* STRUCTURES ****************************************************************/

type digit struct {
  value  int
  symbol string
}

/* GLOBALS *******************************************************************/

var alphabet = []digit {
  {1000, "M"}, {900, "CM"}, {500, "D"}, {400, "CD"},
  { 100, "C"}, { 90, "XC"}, { 50, "L"}, { 40, "XL"},
  {  10, "X"}, {  9, "IX"}, {  5, "V"}, {  4, "IV"},
  {   1, "I"},
}

/* PUBLIC FUNCTIONS **********************************************************/

/**
 * Converts the given number into it's roman string representation.
 *
 * @param number The arabic number to convert.
 * @return The roman string representation.
 */
func ToRoman(number int) string {
  var result bytes.Buffer

  for ;number > 0; {
    digit := findNextDigit(number)

    number -= digit.value
    result.WriteString(digit.symbol)
  }

  return result.String()
}

/* PRIVATE FUNCTIONS *********************************************************/

/**
 * Find the next roman digit.
 *
 * @param  number The arabic number
 * @return The value/symbol digit information
 */
func findNextDigit(number int) digit {
  for _, d := range alphabet {
    if d.value <= number {
      return d;
    }
  }

  return digit{ 0, "" }
}
