/**
 * @file roman-numerals.c
 *
 * @brief Implementation of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

#include <roman-numerals.h>

#include <stdlib.h>
#include <string.h>

/* DEFINITIONS ***************************************************************/

 #define ARRAY_LENGHT(x) (sizeof(x) / sizeof(x[0]))

/* STRUCTURES ****************************************************************/

typedef struct RomanSymbolStruct
{
  unsigned int value;
  char*        symbol;
} RomanSymbol;

/* STATIC FUNCTIONS **********************************************************/

static RomanSymbol
findClosestSymbol(unsigned int number)
{
  static RomanSymbol alphabet[] =
  {
    { 1000, "M" }, { 900, "CM" }, { 500, "D" }, { 400, "CD" },
    {  100, "C" }, {  90, "XC" }, {  50, "L" }, {  40, "XL" },
    {   10, "X" }, {   9, "IX" }, {   5, "V" }, {   4, "IV" },
    {    1, "I" }, {   0,   "" }
  };

  RomanSymbol result = { 0, "" };

  for (size_t i = 0; i < ARRAY_LENGHT(alphabet); ++i)
  {
    if (number >= alphabet[i].value)
    {
      result = alphabet[i];
      break;
    }
  }

  return result;
}

/* IMPLEMENTATION ************************************************************/

char*
toRoman(unsigned int number)
{
  char* result = calloc(512, 1);

  while (number > 0)
  {
    RomanSymbol digit = findClosestSymbol(number);

    number -= digit.value;
    strcat(result, digit.symbol);
  }

  return result;
}
