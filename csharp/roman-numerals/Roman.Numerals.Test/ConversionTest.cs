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
  }
}
