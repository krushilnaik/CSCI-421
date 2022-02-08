(* question 1 *)

(* find the cube of 'n' *)
fun cube n:int =
	n*n*n;

(* cube(2); *)
(* cube(3); *)
(* cube(4); *)

(* question 2 *)

(* find sum of all squares from 0 to n, inclusive *)
fun sqsum x:int =
	(* this is a mathematical simplification I found on Google *)
	x * (x + 1) * (2*x + 1) div 6;

(* sqsum 1; *)
(* sqsum 2; *)
(* sqsum 3; *)

(* question 3 *)

(* helper function *)
(* if the first argument is an empty list, return 'max' *)
fun maxhelper ([], a:int) = a
	(* else split up the the head and tail of the input array *)
	| maxhelper (first::rest, a:int) = 
			(* if 'first' is greater than the running max, we have a new max *)
			if first > a then maxhelper (rest, first)
			(* else throw it away and keep looking *)
			else maxhelper (rest, a);

(* find max value of a list *)
fun max x = maxhelper (tl x, hd x);

(* max([1,2,3]); *)
(* max([1,3,2]); *)
(* max([2,2,2]); *)
