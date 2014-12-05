#
# Prime factors code kata.
#

module PrimeFactors
export computePrimeFactors

#
# @brief Computes the prime factors of the specified integer number.
#
# @param number The number.
#
# @return A list with the prime factors.
#
function generate(number::Int64)
  result = Int64[]
  factor = 2

  while number > 1
    while rem(number, factor) == 0
      push!(result, factor)
      number /= factor
    end

    factor += 1
  end

  return result
end

end
