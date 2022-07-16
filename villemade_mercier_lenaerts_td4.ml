
(*
(* Probleme 1 *)

let rec estTriee l = match l with
  | [] -> true
  | a::[] -> true
  | a::b::q -> a<b && estTriee (b::q);;
*)