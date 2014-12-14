#
# @brief nth prime number unit tests.
#

@test PrimeNumbers.compute(1) == 2
@test PrimeNumbers.compute(2) == 3
@test PrimeNumbers.compute(3) == 5
@test PrimeNumbers.compute(4) == 7
@test PrimeNumbers.compute(5) == 11
@test PrimeNumbers.compute(1000) == 7919
