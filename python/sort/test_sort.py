from nose.tools import assert_equals
from sort import bubble_sort

def test_sort_empty_list():
  assert_equals(bubble_sort([]), [])

def test_sort_one_element_list():
  assert_equals(bubble_sort([1]), [1])
  assert_equals(bubble_sort([2]), [2])

def test_sort_two_elements_list():
  assert_equals(bubble_sort([1, 2]), [1, 2])
  assert_equals(bubble_sort([2, 1]), [1, 2])
  assert_equals(bubble_sort([5, 3]), [3, 5])

def test_sort_three_elements_list():
  assert_equals(bubble_sort([1, 2, 3]), [1, 2, 3])
  assert_equals(bubble_sort([2, 1, 3]), [1, 2, 3])
  assert_equals(bubble_sort([1, 3, 2]), [1, 2, 3])
  assert_equals(bubble_sort([3, 2, 1]), [1, 2, 3])
  assert_equals(bubble_sort([3, 1, 2]), [1, 2, 3])

def test_sort_four_elements_list():
  assert_equals(bubble_sort([1, 2, 3, 4]), [1, 2, 3, 4])
  assert_equals(bubble_sort([2, 1, 3, 4]), [1, 2, 3, 4])
  assert_equals(bubble_sort([2, 3, 1, 4]), [1, 2, 3, 4])
  assert_equals(bubble_sort([1, 2, 4, 3]), [1, 2, 3, 4])
  assert_equals(bubble_sort([1, 4, 2, 3]), [1, 2, 3, 4])
  assert_equals(bubble_sort([4, 1, 2, 3]), [1, 2, 3, 4])
  assert_equals(bubble_sort([4, 3, 2, 1]), [1, 2, 3, 4])
