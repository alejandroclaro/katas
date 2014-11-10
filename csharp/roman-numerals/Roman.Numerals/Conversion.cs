// <copyright file="Conversion.cs" company="Alejandro Claro">
//     Copyright (c) Alejandro Claro. All rights reserved.
// </copyright>
using System;
using System.Collections.Generic;
using System.Linq;

namespace Roman.Numerals
{
  /// <summary>
  /// Roman numerals conversion functions.
  /// </summary>
  public class Conversion
  {
    private static readonly List<KeyValuePair<uint, string>> alphabet = new List<KeyValuePair<uint, string>>()
    {
      new KeyValuePair<uint, string>(1000,  "M"),
      new KeyValuePair<uint, string>( 900, "CM"),
      new KeyValuePair<uint, string>( 500,  "D"),
      new KeyValuePair<uint, string>( 400, "CD"),
      new KeyValuePair<uint, string>( 100,  "C"),
      new KeyValuePair<uint, string>(  90, "XC"),
      new KeyValuePair<uint, string>(  50,  "L"),
      new KeyValuePair<uint, string>(  40, "XL"),
      new KeyValuePair<uint, string>(  10,  "X"),
      new KeyValuePair<uint, string>(   9, "IX"),
      new KeyValuePair<uint, string>(   5,  "V"),
      new KeyValuePair<uint, string>(   4, "IV"),
      new KeyValuePair<uint, string>(   1,  "I"),
      new KeyValuePair<uint, string>(   0,   "")
    };

    /// <summary>
    /// Converts an arabic number into it's Roman number representation.
    /// </summary>
    ///
    /// <param name="number">The arabic number.</param>
    ///
    /// <returns>The Roman number as a string.</returns>
    public static string ToRoman(uint number)
    {
      string result = "";

      while (number > 0)
      {
        var digit = alphabet.First(x => (number >= x.Key));

        number -= digit.Key;
        result += digit.Value;
      }

      return result;
    }
  }
}

