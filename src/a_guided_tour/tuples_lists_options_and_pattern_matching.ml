(* Testing basic pattern matching *)
let head (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | x :: _ -> Some(x)

(* A recursive function*)
let rec last (xs: 'a list): 'a option =
  match xs with
  | [] -> None
  | [x] -> Some(x)
  | _ :: rest -> last rest

(* Tuple type *)
let name (name_age: string * int): string =
  match name_age with
  | a, b -> a


(* General tuple of two *)
let first (tuple: 'a * 'b): 'a =
  match tuple with
  | a, b -> a
