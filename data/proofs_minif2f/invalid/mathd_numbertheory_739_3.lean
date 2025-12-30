import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  have H1 : ∀ a : ℤ, (a * 10) % 10 = 0,
  { intros a,
    rw [mod_eq_of_lt (lt_of_le_of_lt (zle a 0) (zpos 0))],
    exact 0 },
  have H2 : ∀ a b : ℤ, (a * b) % 10 = ((a % 10) * (b % 10)) % 10,
  { intros a b,
    have H3 : (a * b) % 10 = ((a % 10) * b + a * (b % 10) - a * b) % 10,
    { rw [mod_add_mod_sub_mod_eq_sub_mod],
      exact (mod_mul_sub_mod_eq_sub_mod a b) },
    have H4 : (a % 10) * b + a * (b % 10) - a * b = ((a % 10) * b) % 10 + (a * (b % 10)) % 10 - (a * b) % 10,
    { rw [mod_add_mod_sub_mod_eq_sub_mod],
      exact (mod_mul_sub_mod_eq_sub
end
