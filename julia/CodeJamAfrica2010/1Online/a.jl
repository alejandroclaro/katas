function solve(guests, codes)
  function add_code(dict, code)
    dict[code] = get!(dict, code, 0) + 1
    return dict
  end

  codes_count = foldl(add_code, Dict{Integer,Integer}(), codes)
  singles     = filter((code, value) -> value == 1, codes_count)

  return join(keys(singles), ' ')
end

function read_case(f)
  guests = int(readline(f))
  codes  = map(int, split(readline(f), ' '))

  return guests, codes
end

input  = open("in/a.in", "r")
output = open("out/a.out", "w")

cases = int(readline(input))

for i in [1:cases]
  result = solve(read_case(input)...)
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)
