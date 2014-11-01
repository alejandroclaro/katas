from roman_numerals import to_roman
from nose.tools     import assert_equals

def test_roman_1_return_I():
  assert_equals(to_roman(1), "I")

def test_roman_2_return_II():
  assert_equals(to_roman(2), "II")

def test_roman_3_return_III():
  assert_equals(to_roman(3), "III")

def test_roman_4_return_IV():
  assert_equals(to_roman(4), "IV")

def test_roman_5_return_V():
  assert_equals(to_roman(5), "V")

def test_roman_6_return_VI():
  assert_equals(to_roman(6), "VI")

def test_roman_7_return_VII():
  assert_equals(to_roman(7), "VII")

def test_roman_9_return_IX():
  assert_equals(to_roman(9), "IX")

def test_roman_10_return_X():
  assert_equals(to_roman(10), "X")

def test_roman_11_return_XI():
  assert_equals(to_roman(11), "XI")

def test_roman_49_return_XLIX():
  assert_equals(to_roman(49), "XLIX")

def test_roman_51_return_LI():
  assert_equals(to_roman(51), "LI")

def test_roman_99_return_XCIX():
  assert_equals(to_roman(99), "XCIX")

def test_roman_100_return_C():
  assert_equals(to_roman(100), "C")

def test_roman_400_return_CD():
  assert_equals(to_roman(400), "CD")

def test_roman_500_return_D():
  assert_equals(to_roman(500), "D")

def test_roman_900_return_CM():
  assert_equals(to_roman(900), "CM")

def test_roman_1000_return_M():
  assert_equals(to_roman(1000), "M")
