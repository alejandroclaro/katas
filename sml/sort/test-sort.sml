(* Integers sort kata unit tests *)

use "sort/sort.sml";

assertEqual (bubble_sort [])           []           "bubble [] => []";
assertEqual (bubble_sort [1])          [1]          "bubble [1] => [1]";
assertEqual (bubble_sort [2])          [2]          "bubble [2] => [2]";
assertEqual (bubble_sort [2, 1])       [1, 2]       "bubble [2, 1] => [1, 2]";
assertEqual (bubble_sort [3, 2])       [2, 3]       "bubble [3, 2] => [2, 3]";
assertEqual (bubble_sort [2, 1, 3])    [1, 2, 3]    "bubble [2, 1, 3] => [1, 2, 3]";
assertEqual (bubble_sort [1, 3, 2])    [1, 2, 3]    "bubble [1, 3, 2] => [1, 2, 3]";
assertEqual (bubble_sort [3, 2, 1])    [1, 2, 3]    "bubble [3, 2, 1] => [1, 2, 3]";
assertEqual (bubble_sort [3, 4, 2, 1]) [1, 2, 3, 4] "bubble [3, 4, 2, 1] => [1, 2, 3, 4]";

assertEqual (quick_sort [])           []           "quick [] => []";
assertEqual (quick_sort [1])          [1]          "quick [1] => [1]";
assertEqual (quick_sort [2])          [2]          "quick [2] => [2]";
assertEqual (quick_sort [2, 1])       [1, 2]       "quick [2, 1] => [1, 2]";
assertEqual (quick_sort [3, 2])       [2, 3]       "quick [3, 2] => [2, 3]";
assertEqual (quick_sort [1, 2, 3])    [1, 2, 3]    "quick [2, 1, 3] => [1, 2, 3]";
assertEqual (quick_sort [2, 1, 3])    [1, 2, 3]    "quick [2, 1, 3] => [1, 2, 3]";
assertEqual (quick_sort [3, 2, 1])    [1, 2, 3]    "quick [3, 2, 1] => [1, 2, 3]";
assertEqual (quick_sort [3, 1, 2])    [1, 2, 3]    "quick [3, 1, 2] => [1, 2, 3]";
assertEqual (quick_sort [1, 2, 3, 4]) [1, 2, 3, 4] "quick [1, 2, 3, 4] => [1, 2, 3, 4]";
assertEqual (quick_sort [4, 3, 2, 1]) [1, 2, 3, 4] "quick [4, 3, 2, 1] => [1, 2, 3, 4]";
assertEqual (quick_sort [2, 4, 2, 1]) [1, 2, 2, 4] "quick [2, 4, 2, 1] => [1, 2, 2, 4]";
