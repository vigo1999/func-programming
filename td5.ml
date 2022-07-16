
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
           0,
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

let parfait a = if (complet a) && (equilibre a) then true else false;;

let rec miroir a = match a with
  Vide -> Vide
  | Feuille f -> Feuille f
  | Noeud (l, x, r) -> Noeud ((miroir r), x, (miroir l));;
*)

(* 
  (* Probleme 2 *)

type 'a elem_arbre = N of 'a | F of 'a | V;;

let rec prefix a = match a with
  Vide -> [V]
  | Feuille f -> [F f]
  | Noeud (l, x, r) -> [N x] @ (prefix l) @ (prefix r);;

let rec infix a = match a with
  Vide -> [V]
  | Feuille f -> [F f]
  | Noeud (l, x, r) -> (infix l) @ [N x] @ (infix r);;

let rec postfix a = match a with
  Vide -> [V]
  | Feuille f -> [F f]
  | Noeud (l, x, r) -> (postfix l) @ (postfix r) @ [N x];;

let infix_1 = Noeud (
                Feuille 1,
                2,
                Noeud (
                  Noeud (
                    Feuille 3,
                    4,
                    Feuille 5
                  ),
                  6,
                  Feuille 7
                )
              );;

let infix_2 = Noeud (
                Noeud (
                  Feuille 1,
                  2,
                  Feuille 3
                ),
                4,
                Noeud (
                  Feuille 5,
                  6,
                  Feuille 7
                )
              );;
*)

(*
(* Probleme 3 *)

let a3 = Noeud (
          Noeud (
            Feuille 1,
            3,
            Noeud (
              Feuille 4,
              6,
              Feuille 7
            )
          ),
          8,
          Noeud (
            Vide,
            10,
            Noeud (
              Feuille 13,
              14,
              Vide
            )
          )
        );;

let rec est_de_recherche a = match a with
  Vide -> true
  | Feuille f -> true
  | Noeud (Vide, x, Vide) -> true
  | Noeud (Feuille f, x, Vide) -> if f < x then true else false
  | Noeud (Vide, x, Feuille f) -> if x < f then true else false
  | Noeud (Feuille l, x, Feuille r) -> if ( (l < x) && (x < r) ) then true else false
  | Noeud (l, x, r) -> if ( (est_de_recherche l) && (est_de_recherche r) ) then true else false;; 
*)