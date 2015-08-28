"""
Code kata: Compute prime factors if a given natural number.
"""

def compute_primes(number):
  """
  Computes prime factors of a given natural number.

  @type  number: Integer.
  @param number: The natural number.

  @return A list with the prime factors.
  """
  return _compute_primes(2, number, [])

def _compute_primes(factor, number, result):
  if number <= 1:
    return result
  elif number % factor == 0:
    return _compute_primes(factor, number / factor, result + [factor])
  else:
    return _compute_primes(factor + 1, number, result)
