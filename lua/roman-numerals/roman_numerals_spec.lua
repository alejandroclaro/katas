-- Roman numerals code kata unit tests.
local roman_numerals = require("roman_numerals")

describe("to_roman function", function()

  it("should convert 1 to I", function()
    assert.are.equals("I", roman_numerals.to_roman(1))
  end)

  it("should convert 2 to II", function()
    assert.are.equals("II", roman_numerals.to_roman(2))
  end)

  it("should convert 3 to III", function()
    assert.are.equals("III", roman_numerals.to_roman(3))
  end)

  it("should convert 4 to IV", function()
    assert.are.equals("IV", roman_numerals.to_roman(4))
  end)

  it("should convert 5 to V", function()
    assert.are.equals("V", roman_numerals.to_roman(5))
  end)

  it("should convert 9 to IX", function()
    assert.are.equals("IX", roman_numerals.to_roman(9))
  end)

  it("should convert 10 to X", function()
    assert.are.equals("X", roman_numerals.to_roman(10))
  end)

  it("should convert 40 to XL", function()
    assert.are.equals("XL", roman_numerals.to_roman(40))
  end)

  it("should convert 50 to L", function()
    assert.are.equals("L", roman_numerals.to_roman(50))
  end)

  it("should convert 90 to XC", function()
    assert.are.equals("XC", roman_numerals.to_roman(90))
  end)

  it("should convert 100 to C", function()
    assert.are.equals("C", roman_numerals.to_roman(100))
  end)

  it("should convert 400 to CD", function()
    assert.are.equals("CD", roman_numerals.to_roman(400))
  end)

  it("should convert 500 to D", function()
    assert.are.equals("D", roman_numerals.to_roman(500))
  end)

  it("should convert 900 to CM", function()
    assert.are.equals("CM", roman_numerals.to_roman(900))
  end)

  it("should convert 1000 to M", function()
    assert.are.equals("M", roman_numerals.to_roman(1000))
  end)

  it("should convert 2378 to MMCCCLXXVIII", function()
    assert.are.equals("MMCCCLXXVIII", roman_numerals.to_roman(2378))
  end)

end)
