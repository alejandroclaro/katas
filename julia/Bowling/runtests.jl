import Bowling
using  Base.Test

tests = ["Bowling"]

for t in tests
  file = joinpath("test", "$(t).jl")
  include(file)
end
