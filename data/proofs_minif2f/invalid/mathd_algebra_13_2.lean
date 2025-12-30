import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_13
  (a b : ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin

  cases h₀ 3 with h₁ h₂,
  { cases h₁ with h₁ h₁ },
  { cases h₂ with h₂ h₂ },
  have h₃ := h₀ 3 h₁ h₂,
  have h₄ := h₃.simplify,
  have h₅ := h₄.2,
  have h₆ := h₅.1,
  have h₇ := h₆.2,
  have h₈ := h₇.1,
  have h₉ := h₈.2,
  have h₁₀ := h₉.1,
  have h₁₁ := h₁₀.2,
  have h₁₂ := h₁₁.1,
  have h₁₃ := h₁₂.2,
  have h₁₄ := h₁₃.1,
  have h₁₅ := h₁₄.2,
  have h₁₆ := h₁₅.1,
  have h₁₇ := h₁₆.2,
  have h₁₈ := h₁₇.1,
  have h₁₉ := h₁₈.2,
  have h₂₀ :=
end
