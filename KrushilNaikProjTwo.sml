(* h_zeng defined partition, quickSort, and newQuickSort seperately *)
(* That's not how mergesort on page 114 was written *)
(* In the textbook, all the helper functions were locally scoped *)
(* I decided to follow the instructions instead of the screenshot *)
fun quickSort nil = nil
	| quickSort [e] = [e]
	| quickSort (head::tail) =
			(* helper function *)
			let
				fun partition (pivot, nil) = (nil, nil)
					| partition (pivot, head::tail) =
							let
								val (small, large) = partition (pivot, tail)
							in
								if head < pivot
									then (head::small, large)
									else (small, head::large)
							end;

				val (small, large) = partition(head, tail)
			in
				quickSort(small) @ [head] @ quickSort(large)
			end;

(* Test run *)
quickSort [3, 1, 4, 8, 9, 5, 7, 6, 2, 0];
