'''
Bowling game code kata.
'''

def score(game):
  """
  Computes the game score.

  @type  game: [0-9] integers list.
  @param game: The bolwing game rolls.
  """
  result = 0
  roll   = 0
  game   = game + [0]*(21 - len(game))

  for frame in range(0, 10):
    if is_strike(game, roll):
      result += _score_strike(game, roll)
      roll   += 1
    elif is_spare(game, roll):
      result += _score_spare(game, roll)
      roll   += 2
    else:
      result += _score_frame(game, roll)
      roll   += 2

  return result

def _score_frame(game, roll):
  return game[roll] + game[roll + 1]

def is_spare(game, roll):
  return _score_frame(game, roll) == 10

def _score_spare(game, roll):
  return 10 + game[roll + 2]

def is_strike(game, roll):
  return game[roll] == 10

def _score_strike(game, roll):
  return 10 + game[roll + 1] + game[roll + 2]
