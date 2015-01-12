/*
 * @brief Roman numerals kata unit tests.
 */
package roman_numerals

/* IMPORTS *******************************************************************/

import "testing"

/* STRUCTURES ****************************************************************/

type testCase struct {
  input    int
  expected string
}

/* PUBLIC FUNCTIONS **********************************************************/

func TestToRoman(test *testing.T) {
  // Arrange
  cases := []testCase {
    { 1,     "I" },
    { 2,    "II" },
    { 3,   "III" },
    { 4,    "IV" },
    { 5,     "V" },
    { 6,    "VI" },
    { 9,    "IX" },
    { 10,    "X" },
    { 40,   "XL" },
    { 50,    "L" },
    { 90,   "XC" },
    { 100,   "C" },
    { 400,  "CD" },
    { 500,   "D" },
    { 900,  "CM" },
    { 1000,  "M" },
    { 2378, "MMCCCLXXVIII" },
  }

  for _, c := range cases {
    // Act
    actual := ToRoman(c.input)

    // Assert
    if actual != c.expected {
      message := "ToRoman(%q): expected %q, actual %q"
      test.Errorf(message, c.input, c.expected, actual)
    }
  }
}
