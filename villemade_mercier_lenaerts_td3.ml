
(*

let rec nbOccurrences e l =
  if (l=[]) then 0
  else if e = (List.hd l)
    then 1 + (nbOccurrences e (List.tl l))
else (nbOccurrences e (List.tl l));;
nbOccurrences 3 [1;3;7;8;9;3;1;3];;

let rec retireOccurrence1 o l =
  if l = [] then l
  else if (o = (List.hd l)) then (List.tl l)
  else (List.hd l)::(retireOccurrence1 o (List.tl l));;
retireOccurrence1 3 [2;3;3;8;9];;

let rec plusGrand1 l = match l with
[] -> failwith "N'existe pas."
| h::[] -> h
| h::t -> max h (plusGrand1 t);;
plusGrand1 [2; 56; 89; 5];;

let rec plusGrand2 l = match l with
[] -> failwith "N'existe pas."
| h::[] -> h
| h1::h2::[] -> max h1 h2
| h1::h2::t -> if h1 > h2 then plusGrand2 (h1::t) else plusGrand2 (h2::t);;
plusGrand1 [2; 56; 89; 5];;
*)

(*
(* Probleme 1 *)

let sommeListe l =
  let rec sum l acc = match l with
    |[] -> acc
    |head::tail -> sum tail (acc+head)
  in sum l 0;;
          
sommeList [1,2,3] ;;
  
let multScal l scal =
  let rec mult scal l = match l with
    | [] -> []
    | h::t -> h*scal :: mult scal t
  in mult scal l ;;
    
multScal [1;2;3] 2 ;;
*)

(*
(* Probleme 2 *)


(*permet d'ajouter des zeros dans une liste jusqu'à atteindre la taille voulue*)
let rec ajoutezero (liste,taille) =
  if ((List.length liste) = taille) then liste
  else ajoutezero ((0::liste),taille);;

(*permet d'afficher une liste *)
let show_int_list t = List.iter (fun v -> Printf.printf "%d" v) t;;

(*ajoute des zéros dans la liste la plus petite des deux*)
let f (l1,l2) =
  if (List.length l1 > List.length l2) then
    let l2 = ajoutezero (l2, List.length l1) in (l1,l2)
  else if (List.length l1 < List.length l2) then
    let l1 = ajoutezero ( l1, List.length l2) in (l1,l2)
  else (l1,l2);;

(*calcule la somme de la liste*)

(* sinon somme tête des listes et rappel de la fonction avec comme argument la queue des listes*)
let rec sommeliste (l1,l2) =
  if ((l1 = []) && (l2 = [])) then [](*condition d'arrêt*)
  else (List.hd l1+List.hd l2)::sommeliste(List.tl l1,List.tl l2);;(*voir dessin*)

(*definition des listes et appel des fonctions*)
let liste1 = [1;2;3;4];;
let liste2 = [1;2];;
show_int_list (sommeliste(f(liste2,liste1)));;

*)

(*
(* Probleme 3 *)



*)