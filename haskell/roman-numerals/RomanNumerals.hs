{- |
Module :  RomanNumerals
-}
module RomanNumerals where

import Data.List

convert :: String -> Int -> String
convert result number =
  let
    alphabet = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
                ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
                (  10, "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
                (   1, "I")]
  in
    case (find (\(x, _) -> number >= x)) alphabet of
      Just (value, digit) -> convert (result ++ digit) (number - value)
      Nothing             -> result
