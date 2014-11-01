/**
 * @brief Implementation of arabic to roman conversion functions.
 */

/* INCLUDES ******************************************************************/

#include <RomanNumerals.h>
#include <map>

/* IMPLEMENTATION ************************************************************/

std::string
toRoman(uint32_t number)
{
  static std::map<uint32_t, std::string> alphabet =
  {
    {1000, "M" }, { 900, "CM" }, { 500, "D" }, { 400, "CD" },
    { 100, "C" }, {  90, "XC" }, {  50, "L" }, {  40, "XL" },
    {  10, "X" }, {   9, "IX" }, {   5, "V" }, {   4, "IV" },
    {   1, "I" }, {   0,   "" }
  };

  std::string result;

  while (number > 0)
  {
    auto digit  = *(--alphabet.upper_bound(number));

    result += digit.second;
    number -= digit.first;
  }

  return result;
}
