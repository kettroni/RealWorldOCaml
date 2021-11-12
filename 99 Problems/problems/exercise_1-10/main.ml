(* Problem 1 *)
let rec last (xs: 'a list) : 'a option =
  match xs with
  | [] -> None
  | [x] -> Some(x)
  | _ :: rest -> last rest

(* Problem 2 *)
let rec last_two (xs: 'a list) : ('a * 'a) option =
  match xs with
  | [] -> None
  | [x] -> None
  | [x;y] -> Some (x,y)
  | _ :: rest -> last_two rest

(* Problem 3 *)
let rec at (k: int) (xs: 'a list) : 'a option =
  match xs with
  | _ when k < 1 -> None
  | [] -> None
  | x :: _ when k = 1 -> Some x
  | x :: rest when k > 1 -> at (k-1) rest

(* Problem 4 *)
let rec length (xs: 'a list) : int =
  match xs with
  | [] -> 0
  | _ :: rest -> 1 + length rest


let rec tail_length (xs: 'a list) (result: int) : int =
  match xs with
  | [] -> result
  | _ :: rest -> tail_length rest (result + 1)


