#
# @file b.jl
# @brief CodeJam problem B solution.
# @author apollyon <alejandro.claro@gmail.com>
# @copyright 2015 Alejandro Claro.
#

function special_step(plates, fraction)
  pancakes    = pop!(plates)
  move::Int32 = 0

  move = div(pancakes, fraction)

  plate_x = pancakes - move
  plate_y = move

  if plate_x > 0
    insert!(plates, searchsortedfirst(plates, plate_x), plate_x)
  end

  if plate_y > 0
    insert!(plates, searchsortedfirst(plates, plate_y), plate_y)
  end

  return plates
end

function solve(plates)
  sort!(plates)

  result::Int32  = 0
  optimal::Int32 = plates[end]

  while plates[end] > 2 && result < optimal
    halfPlates  = special_step(copy(plates), 2)
    thirdPlates = special_step(special_step(copy(plates), 3), 3)

    halfTime  = halfPlates[end]  + 1
    thirdTime = thirdPlates[end] + 2

    if thirdTime < halfTime
      plates  = thirdPlates
      optimal = min(optimal, result + thirdTime)
      result += 2
    else
      plates  = halfPlates
      optimal = min(optimal, result + halfTime)
      result += 1
    end

    #println("$result | $optimal | plates")
  end

  return min(optimal, result + plates[end])
end

function read_case(f)
  n      = parse(Int32, readline(f))
  plates = split(chomp(readline(f)), ' ')
  return map(x -> parse(Int32, x), plates)
end

input  = open("in/b.in", "r")
output = open("out/b.out", "w")

cases = parse(Int32, readline(input))

for i in [1:cases;]
  plates = read_case(input)
  result = solve(plates)

  println("Case #$i $plates -> $result")
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)

