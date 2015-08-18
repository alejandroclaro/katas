(* Integers sort code kata *)

(*
 * @brief Bubble sorts a list.
 *
 * @param {List} A list of integers.
 * @return The sorted list.
 *)
fun bubble_sort []     = []
  | bubble_sort (x::y) =
    let
      fun partial_sort []        = []
        | partial_sort [x]       = [x]
        | partial_sort (x::y::zs) =
          if x < y then
            x::(partial_sort (y::zs))
          else
            y::(partial_sort (x::zs))
     in
       partial_sort(x::(bubble_sort y))
     end

(*
 * @brief Quick sorts a list.
 *
 * @param {List} A list of integers.
 * @return The sorted list.
 *)
fun quick_sort []      = []
  | quick_sort (x::xs) =
    let
      val left  = List.filter (fn y => y <  x) xs
      val right = List.filter (fn y => y >= x) xs
    in
      (quick_sort left) @ [x] @ (quick_sort right)
    end
