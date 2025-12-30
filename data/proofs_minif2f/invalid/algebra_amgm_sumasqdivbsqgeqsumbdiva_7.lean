import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sumasqdivbsqgeqsumbdiva
  (a b c : ℝ)
  (h₀ : 0 < a ∧ 0 < b ∧ 0 < c) :
  a^2 / b^2 + b^2 / c^2 + c^2 / a^2 ≥ b / a + c / b + a / c :=
begin

  have h₁ := (real.pow_nonneg (0:ℝ) (a^2 / b^2)).ne,
  have h₂ := (real.pow_nonneg (0:ℝ) (b^2 / c^2)).ne,
  have h₃ := (real.pow_nonneg (0:ℝ) (c^2 / a^2)).ne,
  have h₄ := (real.pow_pos (0:ℝ) (a^2 / b^2) (h₀.1)).ne,
  have h₅ := (real.pow_pos (0:ℝ) (b^2 / c^2) (h₀.2)).ne,
  have h₆ := (real.pow_pos (0:ℝ) (c^2 / a^2) (h₀.3)).ne,
  have h₇ := (real.pow_pos (0:ℝ) (a^2 / b^2) (h₀.1)).ne,
  have h₈ := (real.pow_pos (0:ℝ) (b^2 / c^2) (h₀.2)).ne,
  have h₉ := (real.pow_pos
end
