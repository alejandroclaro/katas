function solve(credit, list)
  for index1 in [1:length(list)]
    for index2 in [(index1 + 1):length(list)]
      if (list[index1] + list[index2]) == credit
        return index1, index2
      end
    end
  end
end

function read_case(f)
 credit = int(readline(input))
 size   = int(readline(input))
 list   = map(int, split(readline(f)))

 return credit, list
end

input  = open("in/a.in", "r")
output = open("out/a.out", "w")

cases = int(readline(input))

for i in [1:cases]
  index1, index2 = solve(read_case(input)...)
  write(output, "Case #$i: $index1 $index2\n")
end

close(input)
close(output)
