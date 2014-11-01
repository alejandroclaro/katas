-- Roman numerals code kata.

local roman_numerals = {}

local alphabet =
{
  { 1000, "M" }, { 900, "CM" }, { 500, "D" }, { 400, "CD" },
  {  100, "C" }, {  90, "XC" }, {  50, "L" }, {  40, "XL" },
  {   10, "X" }, {   9, "IX" }, {   5, "V" }, {   4, "IV" },
  {    1, "I" }, {   0, "" }
}

local function find_next_digit(number)
  for _, pair in ipairs(alphabet) do
    value, symbol = unpack(pair)

    if number >= value then
      return value, symbol
    end
  end
end

--- Converts an arabic number into a roman number.
-- @param number The arabic number.
-- @return The roman number as a string.
function roman_numerals.to_roman(number)
  local result = ""

  while number > 0 do
    value, symbol = find_next_digit(number)

    number = number - value
    result = result .. symbol
  end

  return result
end

return roman_numerals
