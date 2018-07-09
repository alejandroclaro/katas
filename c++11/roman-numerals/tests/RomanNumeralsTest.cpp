/**
 * @brief Roman numerals code kata unit tests.
 */

/* INCLUDES ******************************************************************/

#include <RomanNumerals.h>
#include <gmock/gmock.h>

/* USINGS ********************************************************************/

using namespace testing;

/* UNIT TESTS ****************************************************************/

TEST(RomanNumeralsTest, toRoman_1_return_I)
{
  ASSERT_THAT(toRoman(1), Eq("I"));
}

TEST(RomanNumeralsTest, toRoman_5_return_V)
{
  ASSERT_THAT(toRoman(5), Eq("V"));
}

TEST(RomanNumeralsTest, toRoman_10_return_X)
{
  ASSERT_THAT(toRoman(10), Eq("X"));
}

TEST(RomanNumeralsTest, toRoman_50_return_L)
{
  ASSERT_THAT(toRoman(50), Eq("L"));
}

TEST(RomanNumeralsTest, toRoman_100_return_C)
{
  ASSERT_THAT(toRoman(100), Eq("C"));
}

TEST(RomanNumeralsTest, toRoman_500_return_D)
{
  ASSERT_THAT(toRoman(500), Eq("D"));
}

TEST(RomanNumeralsTest, toRoman_1000_return_M)
{
  ASSERT_THAT(toRoman(1000), Eq("M"));
}

TEST(RomanNumeralsTest, toRoman_2_return_II)
{
  ASSERT_THAT(toRoman(2), Eq("II"));
}

TEST(RomanNumeralsTest, toRoman_3_return_III)
{
  ASSERT_THAT(toRoman(3), Eq("III"));
}

TEST(RomanNumeralsTest, toRoman_4_return_IV)
{
  ASSERT_THAT(toRoman(4), Eq("IV"));
}

TEST(RomanNumeralsTest, toRoman_9_return_IX)
{
  ASSERT_THAT(toRoman(9), Eq("IX"));
}

TEST(RomanNumeralsTest, toRoman_40_return_XL)
{
  ASSERT_THAT(toRoman(40), Eq("XL"));
}

TEST(RomanNumeralsTest, toRoman_90_return_XC)
{
  ASSERT_THAT(toRoman(90), Eq("XC"));
}

TEST(RomanNumeralsTest, toRoman_400_return_CD)
{
  ASSERT_THAT(toRoman(400), Eq("CD"));
}

TEST(RomanNumeralsTest, toRoman_900_return_CM)
{
  ASSERT_THAT(toRoman(900), Eq("CM"));
}

TEST(RomanNumeralsTest, toRoman_2378_return_MMCCCLXXVIII)
{
  ASSERT_THAT(toRoman(2378), Eq("MMCCCLXXVIII"));
}
