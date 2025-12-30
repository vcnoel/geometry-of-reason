import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  have h₁ := (125 / 8) * (12 / 12),
  have h₂ := (12 / 12) * (125 / 8),
  have h₃ := (12 * 125 / (12 * 8)),
  have h₄ := (125 * 12 / (8 * 12)),
  have h₅ := 125 * 12 / (8 * 12),
  have h₆ := (125 * 12) / (8 * 12),
  have h₇ := (125 * 12) / (12 * 8),
  have h₈ := (125 * 12) / (12 * 8),
  have h₉ := (125 * 12) / (12 * 8),
  have h₁₀ := (125 * 12) / (8 * 12),
  have h₁₁ := (125 * 12) / (8 * 12),
  have h₁₂ := (125 * 12) / (8 * 12),
  have h₁₃ := (125 * 12) / (12 * 8),
  have h₁₄ := (125 * 12) / (
end
