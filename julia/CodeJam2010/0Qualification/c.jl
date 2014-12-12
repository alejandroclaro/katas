function solve(message)
  const alphabet = Dict(
    'a' => "2", 'b' => "22", 'c' => "222",
    'd' => "3", 'e' => "33", 'f' => "333",
    'g' => "4", 'h' => "44", 'i' => "444",
    'j' => "5", 'k' => "55", 'l' => "555",
    'm' => "6", 'n' => "66", 'o' => "666",
    'p' => "7", 'q' => "77", 'r' => "777", 's' => "7777",
    't' => "8", 'u' => "88", 'v' => "888",
    'w' => "9", 'x' => "99", 'y' => "999", 'z' => "9999",
    ' ' => "0")

  function concatenate(x, y)
    if x[end] == y[1]
      return x * " " * y
    end

    return x * y
  end

  return foldl(concatenate, [alphabet[x] for x in message])
end

function read_case(f)
  chomp(readline(f))
end

input  = open("in/c.in", "r")
output = open("out/c.out", "w")

cases = int(readline(input))

for i in [1:cases]
  result = solve(read_case(input))
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)
