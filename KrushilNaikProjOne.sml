(* question 1 *)

(* find the cube of 'n' *)
fun cube n:int =
	n*n*n;

cube(2);
cube(3);
cube(4);

(* question 2 *)

(* find sum of all squares from 0 to n, inclusive *)
fun sqsum x:int =
	x * (x + 1) * (2*x + 1) div 6;

sqsum 1;
sqsum 2;
sqsum 3;

(* question 3 *)

fun maxhelper ([], max:int) = max
	| maxhelper (head::tail, max:int) = 
			if head > max then maxhelper (tail, head)
			else maxhelper (tail, max);

(* find max value of a list *)
fun max x = maxhelper (tl x, hd x);

max([1,2,3]);
max([1,3,2]);
max([2,2,2]);
