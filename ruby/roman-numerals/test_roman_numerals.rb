#
# Roman numerals code kata unit tests.
#

require_relative "roman_numerals"
require "test/unit"

class TestRomanNumerals < Test::Unit::TestCase
  def test_to_roman_1
    assert_equal("I", to_roman(1))
  end

  def test_to_roman_2
    assert_equal("II", to_roman(2))
  end

  def test_roman_3
    assert_equal("III", to_roman(3))
  end

  def test_roman_4
    assert_equal("IV", to_roman(4))
  end

  def test_roman_5
    assert_equal("V", to_roman(5))
  end

  def test_roman_9
    assert_equal("IX", to_roman(9))
  end

  def test_roman_10
    assert_equal("X", to_roman(10))
  end

  def test_roman_40
    assert_equal("XL", to_roman(40))
  end

  def test_roman_50
    assert_equal("L", to_roman(50))
  end

  def test_roman_90
    assert_equal("XC", to_roman(90))
  end

  def test_roman_100
    assert_equal("C", to_roman(100))
  end

  def test_roman_400
    assert_equal("CD", to_roman(400))
  end

  def test_roman_500
    assert_equal("D", to_roman(500))
  end

  def test_roman_900
    assert_equal("CM", to_roman(900))
  end

  def test_roman_1000
    assert_equal("M", to_roman(1000))
  end

  def test_roman_2378
    assert_equal("MMCCCLXXVIII", to_roman(2378))
  end
end
