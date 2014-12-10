#
# @brief Bowling game code kata.
#

module Bowling
export score

#
# @brief Computes the score of a bowling game.
#
# @param game The bowling game rolls integer array.
#
# @return The game score as a integer.
#
function score(game)
  roll::Int64   = 1
  result::Int64 = 0

  for frame in [1:10]
    if isstrike(game, roll)
      result += score_strike(game, roll)
      roll   += 1
    elseif isspare(game, frame)
      result += score_spare(game, roll)
      roll   += 2
    else
      result += score_frame(game, roll)
      roll   += 2
    end
  end

  return result
end

#
# @brief Indicates whether the specified roll is a strike frame.
#
# @param game The bowling game rolls integer array.
# @param roll The current roll.
#
# @return true if the frame is a strike; otherwise false.
#
function isstrike(game, roll)
  return (game[roll] == 10)
end

#
# @brief Indicates whether the specified roll is a spare frame.
#
# @param game The bowling game rolls integer array.
# @param roll The current roll.
#
# @return true if the frame is a spare; otherwise false.
#
function isspare(game, roll)
  return (game[roll] + game[roll + 1] == 10)
end

#
# @brief Computes the specified strike frame.
#
# @param game The bowling game rolls integer array.
# @param roll The current roll.
#
# @return The frame score.
#
function score_strike(game, roll)
  return (10 + game[roll + 1] + game[roll + 2])
end

#
# @brief Computes the specified spare frame.
#
# @param game The bowling game rolls integer array.
# @param roll The current roll.
#
# @return The frame score.
#
function score_spare(game, roll)
  return (10 + game[roll + 2])
end

#
# @brief Computes the specified normal frame.
#
# @param game The bowling game rolls integer array.
# @param roll The current roll.
#
# @return The frame score.
#
function score_frame(game, roll)
  return (game[roll] + game[roll + 1])
end

end
