import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_234
  (d : ℝ)
  (h₀ : 27 / 125 * d = 9 / 25) :
  3 / 5 * d^3 = 25 / 9 :=
begin

  have h₁ : d = 125 / 27 * 9 / 25,
  { rw [h₀, div_mul_cancel (25 : ℝ) (ne_of_gt $ zero_lt_two)] },
  have h₂ : 3 / 5 * (125 / 27 * 9 / 25)^3 = 25 / 9,
  { rw [h₁, pow_three, pow_three, pow_three, mul_assoc, mul_assoc, mul_assoc, mul_cancel_left (25 : ℝ) (ne_of_gt $ zero_lt_two), mul_cancel_left (25 : ℝ) (ne_of_gt $ zero_lt_two), mul_cancel_left (25 : ℝ) (ne_of_gt $ zero_lt_two)] },
  exact h₂,

end
