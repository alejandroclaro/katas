/**
 * @brief Roman numerals code kata unit tests.
 */

/* INCLUDES ******************************************************************/

#include <roman-numerals.h>

#include <setjmp.h>
#include <stdarg.h>
#include <stddef.h>
#include <stdlib.h>

#include <cmocka.h>

/* UNIT TESTS ****************************************************************/

static void
toRoman_1_return_I()
{
  char* actual = toRoman(1);

  assert_string_equal(actual, "I");
  free(actual);
}

static void
toRoman_5_return_V()
{
  char* actual = toRoman(5);

  assert_string_equal(actual, "V");
  free(actual);
}

static void
toRoman_10_return_X()
{
  char* actual = toRoman(10);

  assert_string_equal(actual, "X");
  free(actual);
}

static void
toRoman_50_return_L()
{
  char* actual = toRoman(50);

  assert_string_equal(actual, "L");
  free(actual);
}

static void
toRoman_100_return_C()
{
  char* actual = toRoman(100);

  assert_string_equal(actual, "C");
  free(actual);
}

static void
toRoman_500_return_D()
{
  char* actual = toRoman(500);

  assert_string_equal(actual, "D");
  free(actual);
}

static void
toRoman_1000_return_M()
{
  char* actual = toRoman(1000);

  assert_string_equal(actual, "M");
  free(actual);
}

static void
toRoman_2_return_II()
{
  char* actual = toRoman(2);

  assert_string_equal(actual, "II");
  free(actual);
}

static void
toRoman_3_return_III()
{
  char* actual = toRoman(3);

  assert_string_equal(actual, "III");
  free(actual);
}

static void
toRoman_4_return_IV()
{
  char* actual = toRoman(4);

  assert_string_equal(actual, "IV");
  free(actual);
}

static void
toRoman_9_return_IX()
{
  char* actual = toRoman(9);

  assert_string_equal(actual, "IX");
  free(actual);
}

static void
toRoman_40_return_XL()
{
  char* actual = toRoman(40);

  assert_string_equal(actual, "XL");
  free(actual);
}

static void
toRoman_90_return_XC()
{
  char* actual = toRoman(90);

  assert_string_equal(actual, "XC");
  free(actual);
}

static void
toRoman_400_return_CD()
{
  char* actual = toRoman(400);

  assert_string_equal(actual, "CD");
  free(actual);
}

static void
toRoman_900_return_CM()
{
  char* actual = toRoman(900);

  assert_string_equal(actual, "CM");
  free(actual);
}

static void
toRoman_2378_return_MMCCCLXXVIII()
{
  char* actual = toRoman(2378);

  assert_string_equal(actual, "MMCCCLXXVIII");
  free(actual);
}

/* ENTRY POINT ***************************************************************/

int
main(void)
{
  const UnitTest tests[] =
  {
    unit_test(toRoman_1_return_I),
    unit_test(toRoman_5_return_V),
    unit_test(toRoman_10_return_X),
    unit_test(toRoman_50_return_L),
    unit_test(toRoman_100_return_C),
    unit_test(toRoman_500_return_D),
    unit_test(toRoman_1000_return_M),
    unit_test(toRoman_2_return_II),
    unit_test(toRoman_3_return_III),
    unit_test(toRoman_4_return_IV),
    unit_test(toRoman_9_return_IX),
    unit_test(toRoman_40_return_XL),
    unit_test(toRoman_90_return_XC),
    unit_test(toRoman_400_return_CD),
    unit_test(toRoman_900_return_CM),
    unit_test(toRoman_2378_return_MMCCCLXXVIII)
  };

  return run_tests(tests);
}
