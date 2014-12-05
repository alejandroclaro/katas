#
# Roman numerals code kata unit test.
#

@test toRoman(1)    == "I"
@test toRoman(2)    == "II"
@test toRoman(3)    == "III"
@test toRoman(4)    == "IV"
@test toRoman(5)    == "V"
@test toRoman(6)    == "VI"
@test toRoman(9)    == "IX"
@test toRoman(10)   == "X"
@test toRoman(40)   == "XL"
@test toRoman(50)   == "L"
@test toRoman(90)   == "XC"
@test toRoman(100)  == "C"
@test toRoman(400)  == "CD"
@test toRoman(500)  == "D"
@test toRoman(900)  == "CM"
@test toRoman(1000) == "M"

@test toRoman(2378) == "MMCCCLXXVIII"
