import FizzBuzz
using  Base.Test

tests = ["FizzBuzz"]

for t in tests
  file = joinpath("test", "$(t).jl")
  include(file)
end
