import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin

  cases h₁ with h₁₁ h₁₂,
  { cases h₂ with h₂₁ h₂₂,
    { apply h₀ 0,
      rw [pow_zero, mul_one, h₁₁, h₂₁, div_mul_eq_mul_div],
      ring,
      apply mul_inv_cancel,
      exact ne_of_gt (real.sqrt_pos.2 (real.pos_of_ne_zero h₁₂)),
      exact ne_of_gt (real.sqrt_pos.2 (real.pos_of_ne_zero h₁₂)),
      apply mul_inv_cancel,
      exact ne_of_gt (real.sqrt_pos.2 (real.pos_of_ne_zero h₁₂)) },
    { apply h₀ 0,
      rw [pow_zero, mul_one, h₁₁, h₂₂, div_mul_eq_mul_div],
      ring,
      apply mul_inv_cancel,
      exact ne_of_gt (real.sqrt_pos.2 (real.pos_of_ne_zero h₁₂)),
      apply mul_inv_cancel,
      exact ne_of_gt (real.sqrt_pos.2 (real.pos_of_ne_zero h₁₂)) } },
  { cases h₂ with h₂₁ h₂₂,
    { apply h₀ 0,
      rw [pow_zero, mul_one, h
end
