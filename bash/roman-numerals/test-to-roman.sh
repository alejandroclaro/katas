#!/bin/bash
#
# Roman numerals unit test.
#

test_toRoman_1_return_I()
{
  assertEquals "I" $(bash to-roman.sh 1)
}

test_toRoman_2_return_II()
{
  assertEquals "II" $(bash to-roman.sh 2)
}

test_toRoman_3_return_III()
{
  assertEquals "III" $(bash to-roman.sh 3)
}

test_toRoman_4_return_IV()
{
  assertEquals "IV" $(bash to-roman.sh 4)
}

test_toRoman_5_return_V()
{
  assertEquals "V" $(bash to-roman.sh 5)
}

test_toRoman_9_return_IX()
{
  assertEquals "IX" $(bash to-roman.sh 9)
}

test_toRoman_10_return_X()
{
  assertEquals "X" $(bash to-roman.sh 10)
}

test_toRoman_40_return_XL()
{
  assertEquals "XL" $(bash to-roman.sh 40)
}

test_toRoman_50_return_L()
{
  assertEquals "L" $(bash to-roman.sh 50)
}

test_toRoman_90_return_XC()
{
  assertEquals "XC" $(bash to-roman.sh 90)
}

test_toRoman_100_return_C()
{
  assertEquals "C" $(bash to-roman.sh 100)
}

test_toRoman_400_return_CD()
{
  assertEquals "CD" $(bash to-roman.sh 400)
}

test_toRoman_500_return_D()
{
  assertEquals "D" $(bash to-roman.sh 500)
}

test_toRoman_900_return_CM()
{
  assertEquals "CM" $(bash to-roman.sh 900)
}

test_toRoman_1000_return_M()
{
  assertEquals "M" $(bash to-roman.sh 1000)
}

test_toRoman_1712_return_MDCCXII()
{
  assertEquals "MDCCXII" $(bash to-roman.sh 1712)
}

# load shunit2
. shunit2
