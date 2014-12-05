#
# Prime factors unit tests.
#

@test PrimeFactors.generate(1) == []
@test PrimeFactors.generate(2) == [2]
@test PrimeFactors.generate(3) == [3]
@test PrimeFactors.generate(4) == [2, 2]
@test PrimeFactors.generate(5) == [5]
@test PrimeFactors.generate(6) == [2, 3]
@test PrimeFactors.generate(7) == [7]

@test PrimeFactors.generate(2 * 3 * 5 * 11) == [2, 3, 5, 11]
