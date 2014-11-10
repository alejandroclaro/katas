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
    private static readonly IComparer<uint> reverseComparer = Comparer<uint>.Create((x, y) => y.CompareTo(x));
    private static readonly SortedDictionary<uint, string> alphabet = new SortedDictionary<uint, string>(reverseComparer)
    {
      { 1000,  "M" }, { 900, "CM" }, { 500,  "D" }, { 400, "CD" },
      {  100,  "C" }, {  90, "XC" }, {  50,  "L" }, {  40, "XL" },
      {   10,  "X" }, {   9, "IX" }, {   5,  "V" }, {   4, "IV" },
      {    1,  "I" }, {   0,   "" }
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

