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
