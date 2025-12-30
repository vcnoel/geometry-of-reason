import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  apply nat.gcd_eq_left_gcd,
  show ∃ a b, 180 = a * 168 + b ∧ 12 = a,
  let a := 1, b := 180 mod 168,
  show 180 = a * 168 + b ∧ 12 = a,
  apply Nat.mod_eq_sub_of_div,
  let c := 180 / 168,
  show 180 = c * 168 + (180 mod 168) ∧ 12 = 1,
  have h1 : 168 * c + (180 mod 168) = 180,
    by linarith,
  have h2 : 12 = c,
    by linarith,
  exact ⟨c, (180 mod 168), h1, h2⟩,

end
