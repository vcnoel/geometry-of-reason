import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_55
  (q p : ℝ)
  (h₀ : q = 2 - 4 + 6 - 8 + 10 - 12 + 14)
  (h₁ : p = 3 - 6 + 9 - 12 + 15 - 18 + 21) :
  q / p = 2 / 3 :=
begin

  -- 1 / 0
  rw h₀,
  rw h₁,
  -- 2 / 3
  exact div_eq_of_mul_eq (mul_eq_of_eq_sub_eq_add (eq_sub_of_add_eq (eq_of_add_eq_sub (sub_eq_of_eq_add (eq_of_sub_eq_add (sub_eq_of_eq_add (eq_of_add_eq_sub (sub_eq_of_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq_add (eq_of_sub_eq
end
