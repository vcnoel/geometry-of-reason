import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ := eq_sub_of_add_eq (h₁),
  have h₃ := eq_mul_of_eq_mul_one h₂,
  have h₄ := eq_of_eq_mul_one h₃,
  exact h₄,

end
