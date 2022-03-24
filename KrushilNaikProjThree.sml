(* Problem 1 *)

fun mymap1 f l = foldr(fn (x, acc) => (f x)::acc) [] l;

mymap1 (fn x => x+1) [1, 2, 3, 4];


(* Problem 2 *)

fun mymap2 f nil = nil
	| mymap2 f (head::tail) = (f head)::(mymap2 f tail);

mymap2 (fn x => x+1) [1, 2, 3, 4];

(* Problem 3 *)
fun ordlist l = mymap1 ord l;

ordlist	[#"A", #"b", #"C"];

(* Problem 4 *)
fun mylength l = foldr(fn (_, y) => 1 + y) 0 l;

mylength [1, 2, 3, 4, 5];

(* Problem 5 *)
fun max (head::tail) = foldr(fn(a,b) => if(a > b) then a else b) head tail;

max [65,98,67];
