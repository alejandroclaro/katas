(* Roman numerals unit tests *)

use "roman-numerals/roman-numerals.sml";

assertEqual (to_roman 1)    "I"     " 1    => I";
assertEqual (to_roman 2)    "II"    " 2    => II";
assertEqual (to_roman 3)    "III"   " 3    => III";
assertEqual (to_roman 4)    "IV"    " 4    => IV";
assertEqual (to_roman 5)    "V"     " 5    => V";
assertEqual (to_roman 6)    "VI"    " 6    => VI";
assertEqual (to_roman 7)    "VII"   " 7    => VII";
assertEqual (to_roman 8)    "VIII"  " 8    => VIII";
assertEqual (to_roman 9)    "IX"    " 9    => IX";
assertEqual (to_roman 10)   "X"     " 10   => X";
assertEqual (to_roman 11)   "XI"    " 11   => XI";
assertEqual (to_roman 39)   "XXXIX" " 39   => XXXIX";
assertEqual (to_roman 40)   "XL"    " 40   => XL";
assertEqual (to_roman 49)   "XLIX"  " 49   => XLIX";
assertEqual (to_roman 50)   "L"     " 50   => L";
assertEqual (to_roman 90)   "XC"    " 90   => XC";
assertEqual (to_roman 100)  "C"     " 100  => C";
assertEqual (to_roman 400)  "CD"    " 400  => CD";
assertEqual (to_roman 500)  "D"     " 500  => D";
assertEqual (to_roman 900)  "CM"    " 900  => CM";
assertEqual (to_roman 1000) "M"     " 1000 => M";

assertEqual (to_roman 967) "CMLXVII" " 967 => CMLXVII";
