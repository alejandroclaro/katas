#
# Roman numerals code kata unit test.
#

@test to_roman(1)    == "I"
@test to_roman(2)    == "II"
@test to_roman(3)    == "III"
@test to_roman(4)    == "IV"
@test to_roman(5)    == "V"
@test to_roman(6)    == "VI"
@test to_roman(9)    == "IX"
@test to_roman(10)   == "X"
@test to_roman(40)   == "XL"
@test to_roman(50)   == "L"
@test to_roman(90)   == "XC"
@test to_roman(100)  == "C"
@test to_roman(400)  == "CD"
@test to_roman(500)  == "D"
@test to_roman(900)  == "CM"
@test to_roman(1000) == "M"

@test to_roman(2378) == "MMCCCLXXVIII"
