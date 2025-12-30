import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem numbertheory_sqmod3in01d
  (a : ℤ) :
  (a^2) % 3 = 0 ∨ (a^2) % 3 = 1 :=
begin

  cases a with a_pos a_neg,
  { -- a is positive
    cases a_pos with a_nat a_rat,
    { -- a is a natural number
      have h := nat.sqmod3in01d a_nat,
      exact h,
    },
    { -- a is a rational number
      have h1 := real.sqmod3in01d a_rat,
      have h2 := int.of_real a_rat,
      have h3 := int.coe_nat a_nat,
      have h4 := int.of_nat a_nat,
      have h5 := int.nat_abs a_nat,
      have h6 := int.of_nat (nat_abs a_nat),
      have h7 := int.coe_nat (nat_abs a_nat),
      have h8 := int.of_nat (nat_abs a_nat),
      have h9 := int.of_nat (nat_abs a_nat),
      have h10 := int.of_nat (nat_abs a_nat),
      have h11 := int.of_nat (nat_abs a_nat),
      have h12 := int.of_nat (nat_abs a_nat),
      have h13 := int.of_nat (nat_abs a_nat),
      have h14 := int.of_nat (nat_abs a_nat),
      have
end
