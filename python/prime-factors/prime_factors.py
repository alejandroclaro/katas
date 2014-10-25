'''
Code kata: Compute prime factors if a given natural number.
'''

def compute_primes(number):
  """
  Computes prime factors if a given natural number.

  @type  number: Integer.
  @param number: The natural number.
  """
  return _compute_primes(2, number, [])

def _compute_primes(factor, number, result):
  """
  Computes prime factors recursion helper function.

  @type  factor: Integer.
  @param factor: The current test factor.

  @type  number: Integer.
  @param number: The natural number.

  @type  result: Integer list.
  @param result: The recutsion result accumulator.
  """
  if number <= 1:
    return result
  elif number % factor == 0:
    return _compute_primes(factor, number / factor, result + [factor])
  else:
    return _compute_primes(factor + 1, number, result)
