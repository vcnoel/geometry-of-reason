import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  have h0 : nat.gcd 180 168 = nat.gcd (180 - 168) 168 := by {rw [gcd_sub, gcd_comm]},
  have h1 : nat.gcd 12 168 = 12 := by {simp},
  have h2 : nat.gcd 180 168 = nat.gcd 12 168 := by {rw [h0, h1]},
  exact h2,

end
