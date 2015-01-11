/*
 * @brief Roman numerals kata unit tests.
 */

var must    = require("unit.js").must;
var convert = require("../roman-numerals");

describe("toRoman function", function()
{
  it("should convert 1 to I", function()
  {
    convert.toRoman(1).must.be.equal('I');
  });

  it("should convert 2 to II", function()
  {
    convert.toRoman(2).must.be.equal('II');
  });

  it("should convert 3 to III", function()
  {
    convert.toRoman(3).must.be.equal('III');
  });

  it("should convert 4 to IV", function()
  {
    convert.toRoman(4).must.be.equal('IV');
  });

  it("should convert 5 to V", function()
  {
    convert.toRoman(5).must.be.equal("V");
  });

  it("should convert 9 to IX", function()
  {
    convert.toRoman(9).must.be.equal("IX");
  });

  it("should convert 10 to X", function()
  {
    convert.toRoman(10).must.be.equal("X");
  });

  it("should convert 40 to XL", function()
  {
    convert.toRoman(40).must.be.equal("XL");
  });

  it("should convert 50 to L", function()
  {
    convert.toRoman(50).must.be.equal("L");
  });

  it("should convert 90 to XC", function()
  {
    convert.toRoman(90).must.be.equal("XC");
  });

  it("should convert 100 to C", function()
  {
    convert.toRoman(100).must.be.equal("C");
  });

  it("should convert 400 to CD", function()
  {
    convert.toRoman(400).must.be.equal("CD");
  });

  it("should convert 500 to D", function()
  {
    convert.toRoman(500).must.be.equal("D");
  });

  it("should convert 900 to CM", function()
  {
    convert.toRoman(900).must.be.equal("CM");
  });

  it("should convert 1000 to M", function()
  {
    convert.toRoman(1000).must.be.equal("M");
  });

  it("should convert 2378 to MMCCCLXXVIII", function()
  {
    convert.toRoman(2378).must.be.equal("MMCCCLXXVIII");
  });
});
