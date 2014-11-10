// <copyright file="ConversionTest.cs" company="Alejandro Claro">
//     Copyright (c) Alejandro Claro. All rights reserved.
// </copyright>
using NUnit.Framework;
using Roman.Numerals;
using System;

namespace Roman.Numerals.Test
{
  /// <summary>
  /// Roman numerals conversion functions unit tests.
  /// </summary>
  [TestFixture()]
  public class ConversionTest
  {
    [Test()]
    public void ToRoman_1_Return_I()
    {
      Assert.That(Conversion.ToRoman(1), Is.EqualTo("I"));
    }

    [Test()]
    public void ToRoman_2_Return_II()
    {
      Assert.That(Conversion.ToRoman(2), Is.EqualTo("II"));
    }

    [Test()]
    public void ToRoman_3_Return_III()
    {
      Assert.That(Conversion.ToRoman(3), Is.EqualTo("III"));
    }

    [Test()]
    public void ToRoman_4_Return_IV()
    {
      Assert.That(Conversion.ToRoman(4), Is.EqualTo("IV"));
    }

    [Test()]
    public void ToRoman_5_Return_V()
    {
      Assert.That(Conversion.ToRoman(5), Is.EqualTo("V"));
    }

    [Test()]
    public void ToRoman_9_Return_IX()
    {
      Assert.That(Conversion.ToRoman(9), Is.EqualTo("IX"));
    }

    [Test()]
    public void ToRoman_10_Return_X()
    {
      Assert.That(Conversion.ToRoman(10), Is.EqualTo("X"));
    }

    [Test()]
    public void ToRoman_40_Return_XL()
    {
      Assert.That(Conversion.ToRoman(40), Is.EqualTo("XL"));
    }

    [Test()]
    public void ToRoman_50_Return_L()
    {
      Assert.That(Conversion.ToRoman(50), Is.EqualTo("L"));
    }

    [Test()]
    public void ToRoman_90_Return_XC()
    {
      Assert.That(Conversion.ToRoman(90), Is.EqualTo("XC"));
    }

    [Test()]
    public void ToRoman_100_Return_C()
    {
      Assert.That(Conversion.ToRoman(100), Is.EqualTo("C"));
    }

    [Test()]
    public void ToRoman_400_Return_CD()
    {
      Assert.That(Conversion.ToRoman(400), Is.EqualTo("CD"));
    }

    [Test()]
    public void ToRoman_500_Return_D()
    {
      Assert.That(Conversion.ToRoman(500), Is.EqualTo("D"));
    }

    [Test()]
    public void ToRoman_900_Return_CM()
    {
      Assert.That(Conversion.ToRoman(900), Is.EqualTo("CM"));
    }

    [Test()]
    public void ToRoman_1000_Return_M()
    {
      Assert.That(Conversion.ToRoman(1000), Is.EqualTo("M"));
    }

    [Test()]
    public void ToRoman_1984_Return_MCMLXXXIV()
    {
      Assert.That(Conversion.ToRoman(1984), Is.EqualTo("MCMLXXXIV"));
    }
  }
}
