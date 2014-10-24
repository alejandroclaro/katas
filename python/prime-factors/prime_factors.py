'''
Code kata: Compute prime factors if a given natural number.
'''

def compute_primes(number):
  """
  Compute prime factors if a given natural number.

  @type  game: Integer.
  @param number: The natural number.
  """
  return _compute_primes(2, number, [])

def _compute_primes(factor, number, result):
  if number <= 1:
    return result
  elif number % factor == 0:
    return _compute_primes(factor, number / factor, result + [factor])
  else:
    return _compute_primes(factor + 1, number, result)
