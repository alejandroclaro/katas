#
# @brief nth prime number code kata.
#

module PrimeNumbers
export find

#
# @brief Computes the nth prime number.
#
# @param n The prime number position starting from 1.
#
# @return The nth prime integer.
#
function compute(n::Integer)
  known_primes    = Int64[]
  position::Int64 = 2

  while length(known_primes) < n
    if findfirst(x -> (rem(position, x) == 0), known_primes) == 0
      push!(known_primes, position)
    end

    position += 1
  end

  return known_primes[end]
end

end # module PrimeNumbers
