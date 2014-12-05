import PrimeFactors
using  Base.Test

tests = ["PrimeFactors"]

for t in tests
  file = joinpath("test", "$(t).jl")
  include(file)
end
