import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_214
  (a : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * (x - 2)^2 + 3)
  (h₁ : f 4 = 4) :
  f 6 = 7 :=
begin

  have h₂ : f 6 = a * (6 - 2)^2 + 3,
  by rw [h₀, pow_two, pow_two],
  have h₃ : a * 16 + 3 = 7,
  by rw [h₁, h₂, add_left_neg, add_left_neg],
  have h₄ : a = 1/4,
  by rw [sub_one_div, div_eq_one, mul_one, sub_zero],
  have h₅ : f 6 = 1/4 * 16 + 3,
  by rw [h₄, h₂],
  have h₆ : f 6 = 7,
  by rw [h₅, mul_one, add_left_neg, add_left_neg],
  exact h₆,

end
