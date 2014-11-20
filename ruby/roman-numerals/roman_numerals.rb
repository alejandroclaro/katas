#
# Roman numerals code kata.
#

ROMAN_ALPHABET = {1000 => "M", 900 => "CM", 500 => "D", 400 => "CD",
                   100 => "C",  90 => "XC",  50 => "L",  40 => "XL",
                    10 => "X",   9 => "IX",   5 => "V",   4 => "IV",
                     1 => "I",   0 =>  "" }

# Converts a arabic number in it's roman string representation.
#
# @param number [Fixnum] The arabic number to convert.
#
# @return [String] The roman number as a string.
def to_roman(number)
  result = ""

  while number > 0 do
    value, symbol = ROMAN_ALPHABET.find { |value, symbol| number >= value }

    result += symbol
    number -= value
  end

  return result
end
