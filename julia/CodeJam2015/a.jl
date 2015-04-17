#
# @file a.jl
# @brief CodeJam problem A solution.
# @author apollyon <alejandro.claro@gmail.com>
# @copyright 2015 Alejandro Claro.
#

function solve(s)
  result = 0
  standing = s[1]

  for i in [2:length(s);]
    if standing < (i - 1)
      result   += 1
      standing += 1
    end

    standing += s[i]
  end

  return  result
end

function read_case(f)
  smax, list = split(chomp(readline(f)), ' ')
  return map(x -> parse(Int32, x), split(list, ""))
end

input  = open("in/a.in", "r")
output = open("out/a.out", "w")

cases = parse(Int32, readline(input))

for i in [1:cases;]
  result = solve(read_case(input))
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)
