import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_45 :
  (nat.gcd 6432 132) + 11 = 23 :=
begin

  calc
    (nat.gcd 6432 132) + 11 = nat.gcd 6432 132 + 11,
      by refl,
    _ = 23,
      by {rw [gcd_0_left, add_right_inj, add_zero], refl},

end
