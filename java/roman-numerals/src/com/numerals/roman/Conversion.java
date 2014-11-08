/**
 * @brief Roman numerals code kata.
 */
package com.numerals.roman;

import java.util.Map;
import java.util.TreeMap;

/**
 * @brief Roman numerals conversion functions.
 */
public class Conversion
{
  private static final TreeMap<Integer, String> alphabet = createAlphabet();

  /**
   * @brief Creates the Roman alphabet.
   *
   * @return The Roman alphabet value-symbol map.
   */
  private static TreeMap<Integer, String> createAlphabet()
  {
    TreeMap<Integer, String> result = new TreeMap<Integer, String>();

    result.put(1000, "M"); result.put(900, "CM"); result.put(500, "D"); result.put(400, "CD");
    result.put( 100, "C"); result.put( 90, "XC"); result.put( 50, "L"); result.put( 40, "XL");
    result.put(  10, "X"); result.put(  9, "IX"); result.put(  5, "V"); result.put(  4, "IV");
    result.put(   1, "I");

    return result;
  }

  /**
   * @brief Converts a Arabic number into it's Roman number representation.
   *
   * @param number The number to convert.
   *
   * @return The Roman number as a string.
   */
  public static String toRoman(int number)
  {
    String result = "";

    while (number > 0)
    {
      Map.Entry<Integer, String> digit = alphabet.floorEntry(number);

      number -= digit.getKey();
      result += digit.getValue();
    }

    return result;
  }
}
