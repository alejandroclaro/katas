#
# @brief Bowling game score unit tests.
#

@test Bowling.score(Int64[]) == 0
@test Bowling.score([0]) == 0
@test Bowling.score(zeros(Int64, 20))  == 0
@test Bowling.score(ones(Int64, 20))  == 20
@test Bowling.score([ 5, 5, 3, zeros(Int64, 17)]) == 16
@test Bowling.score([10, 3, 4, zeros(Int64, 16)]) == 24
@test Bowling.score(fill(10::Int64, 12)) == 300
