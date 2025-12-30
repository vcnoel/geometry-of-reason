import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  have h₃ := h₂,
  have h₄ := (h₃ * (a - b)) / (a - b),
  have h₅ := (h₄ * (a - b)) / (a - b),
  have h₆ := (h₅ * (a - b)) / (a - b),
  have h₇ := (h₆ * (a - b)) / (a - b),
  have h₈ := (h₇ * (a - b)) / (a - b),
  have h₉ := (h₈ * (a - b)) / (a - b),
  have h₁₀ := (h₉ * (a - b)) / (a - b),
  have h₁₁ := (h₁₀ * (a - b)) / (a - b),
  have h₁₂ := (h₁₁ * (a - b)) / (a - b),
  have h₁₃ := (h₁₂ * (a - b)) / (a - b),
  have h₁₄ := (h₁₃ * (a - b)) / (a - b),
  have h₁₅
end
