/*
 * @brief Roman numerals kata unit tests.
 */
package roman_numerals

/* IMPORTS *******************************************************************/

import "testing"

/* STRUCTURES ****************************************************************/

type Case struct {
  input    int
  expected string
}

/* PUBLIC FUNCTIONS **********************************************************/

func TestToRoman(test *testing.T) {
  // Arrange
  cases := []Case {
    { 1, "I" },
    { 2, "II" },
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
