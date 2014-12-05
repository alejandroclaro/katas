using RomanNumerals
using Base.Test

tests = ["RomanNumerals"]

for t in tests
  file = joinpath("test", "$(t).jl")
  include(file)
end
