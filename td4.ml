
(*
(* Probleme 1 *)

let rec isSorted l = match l with
  [] -> true
  | h::[] -> true
  | i::j::[] -> (fun i j -> if i < j then true else false)
  | i::j:h -> isSorted h ;;
*)