import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aime_1984_p5
  (a b : ℝ)
  (h₀ : real.logb 8 a + real.logb 4 (b^2) = 5)
  (h₁ : real.logb 8 b + real.logb 4 (a^2) = 7) :
  a * b = 512 :=
begin

  have h₂ : 8 * (b^2) = 512,
  { rw [h₀, mul_add, mul_one, mul_add, mul_one, add_eq_add_iff_left],
    exact real.logb_one 8,
    exact real.logb_one (b^2) },
  have h₃ : b^2 = 64,
  { rw [h₂, real.logb_eq_zero_iff, not_lt, lt_asymm],
    exact (real.logb_pos _ _) },
  have h₄ : b = 8,
  { rw [h₃, sqrt_eq_square_iff_eq],
    exact real.sqrt_pos _ },
  have h₅ : a^2 = 64,
  { rw [h₁, real.logb_eq_zero_iff, not_lt, lt_asymm],
    exact (real.logb_pos _ _) },
  have h₆ : a = 8,
  { rw [h₅, sqrt_eq_square_iff_eq],
    exact real.sqrt_pos _ },
  have h₇ : a * b = 8 * 8,
  { rw [h₄, h₆, mul_assoc, mul_comm, mul_one] },
  exact h₇
end
