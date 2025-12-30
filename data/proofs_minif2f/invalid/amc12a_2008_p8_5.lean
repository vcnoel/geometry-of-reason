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
  have h₄ := real.sqrt_nonneg (6 * x^2),
  have h₅ := real.sqrt_nonneg (6 * y^2),
  have h₆ := real.sqrt_pos (6 * x^2),
  have h₇ := real.sqrt_pos (6 * y^2),
  have h₈ := real.sqrt_pos (2 * (6 * y^2)),
  have h₉ := real.sqrt_pos (6 * x^2),
  have h₁₀ := real.sqrt_pos (6 * x^2),
  have h₁₁ := real.sqrt_pos (2 * (6 * y^2)),
  have h₁₂ := real.sqrt_pos (6 * y^2),
  have h₁₃ := real.sqrt_pos (6 * y^2),
  have h₁₄ := real.sqrt_pos (6 * y^2),
  have h₁₅ := real.sqrt_pos (6 * y^2),
  have h₁₆ := real.sqrt_pos (6 * y^2),
  have h₁₇ := real.sqrt_pos (6 * y^2),
  have h₁₈ := real.sqrt_pos (6
end
