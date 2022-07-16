
(* TD 5 - arbre binaire *)

(* 
   type 'a arbreBin = Vide | Noeud of 'a arbreBin * 'a * 'a arbreBin | Feuille of 'a;;
*)

(*
let a1 = Noeud (
           Noeud (
            Feuille 3,
            1,
            Noeud (
              Feuille 6,
              4,
              Feuille 7
            )
           ),
           1,
           Noeud (
            Vide,
            2,
            Noeud (
              Feuille 9,
              5,
              Feuille 8
            )
           )
          );;  


let a2 = Noeud (
            Noeud (
              Feuille 2,
              4,
              Feuille 8
            ),
            16,
            Feuille 32
          );;

let rec taille a = match a with 
  Vide -> 0
  | Feuille f -> 1
  | Noeud (l, x, r) -> 1 + taille l + taille r;;

let rec hauteur a = match a with
  Vide -> -1
  | Feuille f -> 1
  | Noeud (l, x, r) -> 1 + (max (hauteur l) (hauteur r));;

let rec recherche e a = match a with
  Vide -> false
  | Feuille f -> (f=e) 
  | Noeud (l, x, r) -> (x=e) || (recherche e l) || (recherche e r);;

let rec equilibre a = match a with
  Vide -> true
  | Feuille f -> true
  | Noeud (l, x, r) -> ( (0 <= (hauteur l) - (hauteur r)) && ((hauteur l) - (hauteur r) <= 1) ) && (equilibre l) && (equilibre r);;
*)

(*
(* Probleme 1 *)

let rec somme a = match a with 
  Vide -> 0
  | Feuille f -> f
  | Noeud (l, x, r) -> x + (somme l) + (somme r);;

let rec max_a a = match a with
  Vide -> 0
  | Feuille f -> f
  | Noeud (l, x, r) -> max x (max (max_a l) (max_a r));;

let rec complet a = match a with
  Vide -> false
  | Feuille f -> true
  | Noeud (l, x, r) -> (complet l) && (complet r);;

*)