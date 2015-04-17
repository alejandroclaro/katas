#
# @file b.jl
# @brief CodeJam problem B solution.
# @author apollyon <alejandro.claro@gmail.com>
# @copyright 2015 Alejandro Claro.
#

function regular_step(plates)
  return filter(x -> x > 0, map(x -> x - 1, plates))
end

function special_step(plates)
  result      = copy(plates)
  pancakes    = pop!(result)
  move::Int32 = 0

  if rem(plates[end], 2) == 0
    move = div(pancakes, 2)
  else
    move = div(pancakes, 3)
  end

  plate_x = pancakes - move
  plate_y = move

  insert!(result, searchsortedfirst(result, plate_x), plate_x)
  insert!(result, searchsortedfirst(result, plate_y), plate_y)

  return result
end

function step(plates, result::Int32)
  if plates[end] <= 2
    return result + plates[end]
  end

  result  = result + 1
  regular = regular_step(plates)
  special = special_step(plates)

  return min(step(regular, result), step(special, result))
end

function solve(plates)
  sort!(plates)
  result = 0

  return step(plates, result)
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
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)

