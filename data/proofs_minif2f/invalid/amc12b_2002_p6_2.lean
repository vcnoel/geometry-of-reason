import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  rw [h₁, pow_sub, pow_sub, mul_sub, mul_sub, mul_sub, mul_sub, mul_sub, mul_sub, mul_sub],
  split,
  { rw [h₀, ne.def, ne.def, eq_neg_iff_add_eq_zero, add_comm],
    exact h₀.1 },
  { rw [h₀, ne.def, ne.def, eq_neg_iff_add_eq_zero, add_comm],
    exact h₀.2 },

end
