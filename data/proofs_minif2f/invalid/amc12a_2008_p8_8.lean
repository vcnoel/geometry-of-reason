import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p8
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y^3 = 1)
  (h₂ : 6 * x^2 = 2 * (6 * y^2)) :
  x^3 = 2 * real.sqrt 2 :=
begin

  have h₃ := h₂,
  have h₄ := pow_two_mul_pow_two h₁,
  have h₅ := pow_mul h₄ (3/2),
  have h₆ := mul_div_cancel h₅ (2/3),
  have h₇ := div_mul_eq_mul_div h₆ (6 * x^2) 2,
  have h₈ := eq_mul_eq h₇ h₂,
  have h₉ := eq_mul_eq h₈ (6 * x^2) 2,
  have h₁₀ := div_eq_iff (mul_ne_zero 6 2) h₉,
  have h₁₁ := mul_div_cancel h₁₀ (2/6),
  have h₁₂ := div_eq_iff (mul_ne_zero 2 2) h₁₁,
  have h₁₃ := mul_div_cancel h₁₂ (2/2),
  have h₁₄ := real.sqrt_mul_real_sqrt (2 * 2),
  have h₁₅ := real.sqrt_mul_real_sqrt (real.sqrt 2 * real.sqrt 2),
  have h₁₆ := eq_mul_eq h₁₅ h₁₄,
  have
end
