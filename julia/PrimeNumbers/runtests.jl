import PrimeNumbers
using  Base.Test

tests = ["PrimeNumbers"]

for t in tests
  file = joinpath("test", "$(t).jl")
  include(file)
end
