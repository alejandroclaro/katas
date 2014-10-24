from prime_factors import compute_primes
from nose.tools    import assert_equals

def test_prime_1_return_empty_list():
  assert_equals(compute_primes(1), [])

def test_prime_2_return_2():
  assert_equals(compute_primes(2), [2])

def test_prime_3_return_3():
  assert_equals(compute_primes(3), [3])

def test_prime_4_return_2_2():
  assert_equals(compute_primes(4), [2, 2])

def test_prime_5_return_5():
  assert_equals(compute_primes(5), [5])

def test_prime_6_return_2_3():
  assert_equals(compute_primes(6), [2, 3])

def test_prime_7_return_7():
  assert_equals(compute_primes(7), [7])

def test_prime_8_return_2_2_2():
  assert_equals(compute_primes(8), [2, 2, 2])

def test_prime_9_return_3_3():
  assert_equals(compute_primes(9), [3, 3])
