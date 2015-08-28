"""
Sort integers list kata.
"""

def _sort_pair(list, i, j):
  if list[i] < list[j]:
    list[i], list[j] = list[j], list[i]

  return list

def bubble_sort(list):
  """
  Sorts a list of integers.

  @type  list: List.
  @param list: The list of integers.

  @rtype  List
  @return The integers sorted list.
  """
  result = list[:]

  for i in range(1, len(result)):
    for j in range(i, 0, -1):
      result = _sort_pair(result, j, j - 1)

  return result
