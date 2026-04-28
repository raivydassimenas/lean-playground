structure Product where
    name : String
    price : Nat

def discount (product : Product) : Product :=
    { product with price := product.price - product.price/10 }

def IsPositive (x : Int) : Prop := x > 0
#check IsPositive 3

def headOption (l : List Nat) : Option Nat :=
    match l with
    | [] => none
    | x :: _ => some x

def listLength : List String -> Nat
    | [] => 0
    | x :: xs => 1 + listLength xs


#eval listLength ["a", "b", "c"] -- should return 3
