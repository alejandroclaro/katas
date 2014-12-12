function solve(line)
  words  = split(line, ' ')
  result = reverse(words)

  return join(result, ' ')
end

function read_case(f)
  chomp(readline(f))
end

input  = open("in/b.in", "r")
output = open("out/b.out", "w")

cases = int(readline(input))

for i in [1:cases]
  result = solve(read_case(input))
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)
