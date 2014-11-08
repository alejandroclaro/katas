package com.numerals.roman;

import static org.hamcrest.MatcherAssert.assertThat;
import static org.hamcrest.Matchers.equalTo;
import org.junit.Test;

public class ConversionTest
{
  @Test
  public void toRoman_1_return_I()
  {
    assertThat(Conversion.toRoman(1), equalTo("I"));
  }

  @Test
  public void toRoman_2_return_II()
  {
    assertThat(Conversion.toRoman(2), equalTo("II"));
  }

  @Test
  public void toRoman_3_return_III()
  {
    assertThat(Conversion.toRoman(3), equalTo("III"));
  }

  @Test
  public void toRoman_4_return_IV()
  {
    assertThat(Conversion.toRoman(4), equalTo("IV"));
  }

  @Test
  public void toRoman_5_return_V()
  {
    assertThat(Conversion.toRoman(5), equalTo("V"));
  }

  @Test
  public void toRoman_9_return_IX()
  {
    assertThat(Conversion.toRoman(9), equalTo("IX"));
  }

  @Test
  public void toRoman_10_return_X()
  {
    assertThat(Conversion.toRoman(10), equalTo("X"));
  }

  @Test
  public void toRoman_40_return_XL()
  {
    assertThat(Conversion.toRoman(40), equalTo("XL"));
  }

  @Test
  public void toRoman_50_return_L()
  {
    assertThat(Conversion.toRoman(50), equalTo("L"));
  }

  @Test
  public void toRoman_90_return_XC()
  {
    assertThat(Conversion.toRoman(90), equalTo("XC"));
  }

  @Test
  public void toRoman_100_return_C()
  {
    assertThat(Conversion.toRoman(100), equalTo("C"));
  }

  @Test
  public void toRoman_400_return_CD()
  {
    assertThat(Conversion.toRoman(400), equalTo("CD"));
  }

  @Test
  public void toRoman_500_return_D()
  {
    assertThat(Conversion.toRoman(500), equalTo("D"));
  }

  @Test
  public void toRoman_900_return_CM()
  {
    assertThat(Conversion.toRoman(900), equalTo("CM"));
  }

  @Test
  public void toRoman_1000_return_M()
  {
    assertThat(Conversion.toRoman(1000), equalTo("M"));
  }

  @Test
  public void toRoman_1984_return_MCMLXXXIV()
  {
    assertThat(Conversion.toRoman(1984), equalTo("MCMLXXXIV"));
  }
}
