function solve(towns, office, employees)
  result = []

  for t in [1:towns]
    group = sort(map(y -> y[2], filter(x -> x[1] == t, employees)))
    cars  = 0

    if t != office
      total_seats = reduce(+, 0, group)
      passangers  = length(group)

      if (total_seats < passangers)
        return "IMPOSSIBLE"
      end

      cars = compute_town_cars(group)
    end

    push!(result, cars)
  end

  return join(result, ' ')
end

function compute_town_cars(town_employees)
  passangers = length(town_employees)
  cars       = 0

  while !isempty(town_employees) && passangers > 0
    car_seats = pop!(town_employees)

    if car_seats > 0
      cars       += 1
      passangers -= car_seats
    end
  end

  return cars
end

function read_case(f)
  towns, office   = map(int, split(readline(f)))
  employees_count = int(readline(f))
  employees       = []

  for i in [1:employees_count]
    home_town, capacity = map(int, split(readline(f)))
    push!(employees, (home_town, capacity))
  end

  towns, office, employees
end

input  = open("in/b.in", "r")
output = open("out/b.out", "w")

cases = int(readline(input))

for i in [1:cases]
  result = solve(read_case(input)...)
  write(output, "Case #$i: $result\n")
end

close(input)
close(output)
