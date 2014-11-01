/**
 * @brief Implementation of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

#include <RomanNumerals.h>

#include <map>

/* DEFINITIONS ***************************************************************/

typedef std::map<unsigned int, std::string>  ValueSymbolMap;
typedef std::pair<unsigned int, std::string> RomanDigit;

/* STATIC FUNCTIONS **********************************************************/

static ValueSymbolMap
createAlphabet()
{
  ValueSymbolMap result;

  result[1000] = "M"; result[ 900] = "CM"; result[ 500] = "D"; result[ 400] = "CD";
  result[ 100] = "C"; result[  90] = "XC"; result[  50] = "L"; result[  40] = "XL";
  result[  10] = "X"; result[   9] = "IX"; result[   5] = "V"; result[   4] = "IV";
  result[   1] = "I"; result[   0] = "";

  return result;
}

static RomanDigit
findNextDigit(unsigned int number)
{
  static ValueSymbolMap alphabet = createAlphabet();

  return *(--alphabet.upper_bound(number));
}

/* IMPLEMENTATION ************************************************************/

std::string
toRoman(unsigned int number)
{
  std::string result;
  RomanDigit  digit;

  for (unsigned int value = number; value > 0; value -= digit.first)
  {
    digit  = findNextDigit(value);
    result = result + digit.second;
  }

  return result;
}
