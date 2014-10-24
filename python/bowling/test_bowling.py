from bowling    import score
from nose.tools import assert_equals

def test_score_roll_1_return_1():
  assert_equals(score([1]), 1)

def test_score_roll_2_return_2():
  assert_equals(score([2]), 2)

def test_score_roll_1_then_2_return_3():
  assert_equals(score([1, 2]), 3)

def test_score_roll_spare_return_10():
  assert_equals(score([9, 1]), 10)

def test_score_roll_spare_9_return_28():
  assert_equals(score([9, 1, 9]), 28)

def test_score_roll_2_spares_9_return_45():
  assert_equals(score([8, 2, 7, 3, 9]), 45)

def test_score_roll_strike_return_10():
  assert_equals(score([10]), 10)

def test_score_roll_strike_1_1_return_14():
  assert_equals(score([10, 1, 1]), 14)

def test_score_perfect_game():
  assert_equals(score([10] * 12), 300)

def test_score_girl_game_return_133():
  assert_equals(score([1, 4, 4, 5, 6, 4, 5, 5, 10, 0, 1, 7, 3, 6, 4, 10, 2, 8, 6]), 133)
