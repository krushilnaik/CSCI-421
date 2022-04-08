(* When testing this over multiple runs, all the functions would say:  *)
(* Error: expression or pattern begins with infix identifier "CONS" *)
(* I'm guessing something about the previous run isn't cleared on termination *)
(* So remove it if it already exists and re-declare it when it's actually needed (line 27) *)
nonfix CONS;

(* Problem 1 *)
datatype 'element mylist =
    NIL |
    CONS of 'element * 'element mylist;

(* Problem 2 *)

fun prod NIL = 1
	| prod (CONS (head, tail)) = head * prod (tail);

(* Problem 3 *)
fun append NIL ys = ys
  | append (CONS(x, xs)) ys = CONS(x, append xs ys);


(* Problem 4 *)
fun reverse NIL = NIL
  | reverse (CONS(x, xs)) = append (reverse xs) (CONS(x, NIL));

(* Tests *)
infixr 5 CONS;

val a = 1 CONS 2 CONS 3 CONS NIL;
val b = 4 CONS 5 CONS NIL;
val c = append a b;

val d = prod c;
val e = reverse c;
