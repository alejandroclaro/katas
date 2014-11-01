/**
 * @brief Implementation of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

#include <roman-numerals.h>

#include <stdlib.h>
#include <string.h>

/* STRUCTURES ****************************************************************/

struct RomanSymbol
{
  unsigned int value;
  char*        symbol;
};

/* STATIC FUNCTIONS **********************************************************/

static struct RomanSymbol
findNextDigit(unsigned int number)
{
  static struct RomanSymbol alphabet[] =
  {
    { 1000, "M" }, { 900, "CM" }, { 500, "D" }, { 400, "CD" },
    {  100, "C" }, {  90, "XC" }, {  50, "L" }, {  40, "XL" },
    {   10, "X" }, {   9, "IX" }, {   5, "V" }, {   4, "IV" },
    {    1, "I" }, {   0,   "" }
  };

  static size_t size = (sizeof(alphabet) / sizeof(alphabet[0]));

  for (size_t i = 0; i < size; ++i)
  {
    if (number >= alphabet[i].value)
      return alphabet[i];
  }

  return alphabet[0];
}

/* IMPLEMENTATION ************************************************************/

char*
toRoman(unsigned int number)
{
  char* result = calloc(512, 1);

  while (number > 0)
  {
    struct RomanSymbol digit = findNextDigit(number);

    number -= digit.value;
    strcat(result, digit.symbol);
  }

  return result;
}
