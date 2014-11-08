{- |
Module : RomanNumerals
-}
module RomanNumerals (toRoman) where

import Data.List (find)

toRoman :: Int -> String
toRoman = convertToRoman ""

alphabet = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
            ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
            (  10, "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
            (   1, "I")]

convertToRoman :: String -> (Int -> String)
convertToRoman result number =
  case find (\(x, _) -> number >= x) alphabet of
    Just (value, digit) -> convertToRoman (result ++ digit) (number - value)
    Nothing             -> result
