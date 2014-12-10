#
# @brief Bowling game score unit tests.
#

@test Bowling.score(zeros(Int64, 20)) == 0
@test Bowling.score(ones(Int64, 20))  == 20
@test Bowling.score(vcat([ 5, 5, 3], zeros(17))) == 16
@test Bowling.score(vcat([10, 3, 4], zeros(16))) == 24
@test Bowling.score(fill(10, 12)) == 300
