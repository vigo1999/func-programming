
(*
  2 + 2;; (* - : int = 4 *) 
  "il etait " ^ "une fois." ;; (* - : string = "il etait une fois." *)
  29 / 4;; (* - : int = 7 *)
(* 29 /. 4;; (* Line 8, characters 0-2:
Error: This expression has type int but an expression was expected of type float
  Hint: Did you mean `29.'? *) >> 29. /. 4. ou 29 / 4 *)
  29.0 /. 4.0;; (* - : float = 7.25 *)
  29 mod 4;; (* - : int = 1*)
(* 0.5 + 20.2;; (* Line 13, characters 0-3:
Error: This expression has type float but an expression was expected of type int *) >> 0.5 +. 20.2 *)
  0.5 +. 20.2;;
  (42, 'A');; (* - : int * char = (42, 'A') *)
  fst(42, 'A');; (* - : int = 42 *)
  snd(42, 'A');; (* - : char = 'A' *)
  2 = 2;; (* - : bool = true *)
  2 <> 2;; (* - : bool = false *)
  'a' = 'A';;(* - : bool = false *)
  false || true;; (* - : bool = true *)
  true && true;; (* - : bool = true *)
  (2 = 3) || ('A'<>'a' && true);; (* - : bool = true *)
  1;; (* un commentaire *) (* - : int = 1 *)
  [];; (* - : 'a list = [] *)
  [1 ; 2 ; 3];; (* - : int list = [1; 2; 3] *)
     *)
     
(*
(* Mes premieres definitions en Ocalm *)

  let a = 1;; (* val a : int = 1 *)
  let translation = fun x -> x + a;; (* val translation : int -> int = <fun> *)
  translation 3;; (* - : int = 4 *)
  let a = 2;; (* val a : int = 2 *)
(* let translation = fun x -> x + a;; *)
  translation 3;; (* - : int = 4*)
               *)
               
(*
(* Mes premières fonctions en Ocalm *)

  let moyenne a b = (a +. b) /. 2.0;; (* val moyenne : float -> float -> float = <fun> *)
  let moyenne2 (a, b) = (a +. b) /. 2.0;; (* val moyenne2 : float * float -> float = <fun> *)

  moyenne 3.0 2.0;; (* - : float = 2.5 *)
  moyenne 3.0;; (* - : float -> float = <fun> *)
  (moyenne 3.0) 2.0;; (* - : float = 2.5 *)
(* moyenne (3.0, 2.0);; (* Line 48, characters 8-18:
Error: This expression has type 'a * 'b but an expression was expected of type float *) *)
  moyenne2 (3.0, 2.0);; (* - : float = 2.5 *)
(* moyenne2 3.0;; (* Line 51, characters 9-12:
Error: This expression has type float but an expression was expected of type
  float * float *) *)
*)

(*
(* Fonctions anonymes *)

  fun x -> x + 1;; (* - : int -> int = <fun> *)
(* definition sans appel de la fun anonyme. *)
  (fun x -> x + 1) 3;; (* - : int = 4 *)
(* defifition de la fonction anonyme et appel avec x = 3 >> 3 + 1 = 4 *) 
  fun x -> (fun y -> x + y);; (* - : int -> int -> int = <fun> *)
    (* definition sans appel de la fun anonyme, avec imbrication (composition) de deux fun. *)                        
  (fun x -> (fun y -> x + y) 1) 3;; (* - : int = 4*)
(* definition plus appel de la meme expression anonyme avec y = 1 et x = 3 >> x = 3, y = 1, 3 + 1 = 4 *) 
  fun (x, y) -> x;; (* - : 'a * 'b -> 'a = <fun> *)
                  (* definition sans appel de la fun anonyme. *)
  (fun (x, y) -> x) (42, 'A');; (* - : int = 42 *)
(* definition et appel >> x = 42, y = 'A', x = 42 *)
               *)
           
(*    
(* Expression conditionnelles *)

  let abs x = if (x >= 0) then x else (-x);;
  abs 10;;
  abs (-10);;
  *)
  
(*
(* Failwith *)

  let rec eucl a b = if (b = 0) then failwith "Diviseur nul" else
    if a<b then 0,a
    else let q,r = eucl(a-b) b
      in q+1,r;;

  eucl 10 2;;
  eucl 10 0;;
  *)

  (*
(* A votre tour *)

(* 1 *)
(fun x y -> if (x = y) then failwith "x = y" else if (x > y) then x else y) 12 11;; (* function anonyme *)
let max x y = if (x = y) then failwith "x = y" else if (x > y) then x else y;;
max 1 3;;
max 2 2;;

(* 2 *)

let max3 x y z = if (x=y) || (x=z) || (y=z)
  then failwith "x=y ou x=z ou y=z, pas de max."
  else if (x>y)
  then if (x>z) then x
    else z
  else if y>z then y
  else z ;;
max3 1 2 3;;
max3 4 1 7;;


(* 3 *)

let maxli l =
  if l = [] then failwith "Empty List !"
  else let rec aux l acc = match l with 
      |[e] -> max e acc
      |e::f -> aux f (max e acc)
      |[] -> failwith "Empty List !"
    in aux (List.tl l) (List.hd l);;

maxli [2; 4; 9; 7; 11; 6];;
*)