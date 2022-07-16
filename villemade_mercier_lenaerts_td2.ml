
(*
(* Appropriation du cours *)
let divisiblePar n d = (n mod d) = 0;;
divisiblePar 10 2;;
let bissextile

let afficheTestDiv n d = 
  if (divisiblePar n d) then "oui" else "non";;
afficheTestDiv 10 2;;

let bissextile n = 
  if (n mod 400) then true
  else if (n mod 100) then false
  else if (n mod 4) then true;;

bissextile 2000;;

let secondeSuivante1 (a,b,c) = 
  if (c < 59) then (a,b,c+1)
  else if (b < 59) then (a,b+1,0)
  else if (a < 23) then (a+1,0,0)
  else (0,0,0);;
secondeSuivante1(22,59,59);;

let secondeSuivante2 (a,b,c) = match (a,b,c)
with (23,59,59) -> (0,0,0)
| (a,59, 59) -> (a+1,0,0)
| (a,b,59) -> (a,b+1,0)
| (a,b,c) -> (a,b,c+1);;
secondeSuivante1(22,59,59);;

let num (n,d) = n;;
let denum (n,d) = d;;
let addFraction f1 f2 =
  (num f1) * (denum f2) + (num f2) * (denum f1) , (denum f1) * (denum f2);;
addFraction (1,2) (3,4);;

type fraction = {num: int; denum: int};;
let addFractionTyped r1 r2 = {num = r1.num * r2.denum + r2.num * r1.denum; denum = r1.denum * r2.denum};;
addFractionTyped {num=1; denum=2} {num=3; denum=4};;
*)

(*
(* Probleme 1 *)
type fraction = {num: int; denum: int};;
let minusFractionTyped r1 r2 = {num = r1.num * r2.denum - r2.num * r1.denum; denum = r1.denum * r2.denum};;
let testEgalite1 r1 r2 = 
  if (minusFractionTyped r1 r2 = {num=0;denum=r1.denum*r2.denum}) then (true,minusFractionTyped r1 r2) else (false, minusFractionTyped r1 r2);;
testEgalite1 {num=1; denum=2} {num=3; denum=4};;
testEgalite1 {num=1; denum=2} {num=2; denum=4};;


let minusFraction (n1,d1) (n2,d2) = (n1*d2 - n2*d1, d1*d2);;
let testEgalite2 (n1,d1) (n2,d2) =
  if (minusFraction (n1,d1) (n2,d2) = (0, d1*d2) then (true, minusFraction (n1,d1) (n2,d2)) else (false,minusFraction (n1,d1) (n2,d2));;
testEgalite2 (1,2) (3,4);;
testEgalite2 (1,2) (2,4);;

*)

(*
(* Probleme 2 *)

type couleur = Rose | Cyan | Violet | Orange | Rouge | Jaune | Vert | Bleu ;;
type monopoly = {nom: string; couleur: couleur; prix: int};


let rec sortRue r1 r2 r3 =

sortRue {nom="n";couleur=Bleu;prix=40} {nom="n";couleur=Bleu;prix=20} {nom="n";couleur=Bleu;prix=60};;
*)
