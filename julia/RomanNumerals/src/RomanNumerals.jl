#
# Roman numerals code kata.
#

module RomanNumerals
export to_roman

#
# @brief Converts an arabic numeral to roman.
#
# @param number The arabic numeral.
#
# @return The roman numeral as a string.
#
function to_roman(number::Int64)
  const ALPHABET = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
                    ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
                    (  10, "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
                    (   1, "I")]

  function convert(n, result)
    index = findfirst(x -> n >= x[1], ALPHABET)

    if index == 0
      return result
    else
      v, s = ALPHABET[index]
      convert(n - v, result * s)
    end
  end

  convert(number, "")
end

end
