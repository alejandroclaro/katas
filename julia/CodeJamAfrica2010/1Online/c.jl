function solve(problems, answers, distribution)
  result = 0

  if problems == answers
    return minimum(distribution)
  end

  sort!(distribution, rev = true)

  while minimum(distribution[1:answers]) > 0
    result += 1

    for i in [1:answers]
      distribution[i] -= 1
    end

    sort!(distribution, rev = true)
  end

  return result
end

function read_case(f)
  input = map(int, split(readline(f)))

  return input[1], input[2], input[3:end]
end

input  = open("in/c.in", "r")
output = open("out/c.out", "w")

cases = int(readline(input))

for i in [1:cases]
  result = solve(read_case(input)...)
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)

