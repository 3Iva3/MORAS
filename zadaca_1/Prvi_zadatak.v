Require Import Bool.


Notation " ! b " := (negb b) (at level 0).

(*1a*)
Goal forall x y,
  !(x && y ) || (!x && y) || (!x && !y) = (!x || !y).
Proof.
  destruct x, y; simpl; reflexivity.
Qed.

(*1b*)
Goal forall x y z,
 !(!x && y && !z ) && !(x && y && z ) && (x && !y &&!z ) = (x && !y && !z) .
Proof.
  destruct x, y, z ; simpl ; reflexivity.
Qed.