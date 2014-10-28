'''
Roman numerals code kata.
'''

def to_roman(number):
  """
  Converts an arabic number into a roman number.

  @type  number: integer.
  @param number: The arabic number to convert.

  @rtype  string
  @return The roman number.
  """
  return _to_roman(number, "")

_ALPHABET = [(1000, "M"), (900, "CM"), (500, "D"), (400, "CD"),
             ( 100, "C"), ( 90, "XC"), ( 50, "L"), ( 40, "XL"),
             ( 10,  "X"), (  9, "IX"), (  5, "V"), (  4, "IV"),
             (  1,  "I"), (  0,  "")]

def _to_roman(number, result):
  if number == 0:
    return result
  else:
    digit_value, digit_symbol = next((v, s) for (v, s) in _ALPHABET if number >= v)
    return _to_roman(number - digit_value, result + digit_symbol)
