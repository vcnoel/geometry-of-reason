import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  have h₂ := h₁ 0,
  have h₃ := h₁ (a + b),
  have h₄ := h₁ (a + b - 1),
  have h₅ := h₁ (a + b - 1 - (a - 1)),
  have h₆ := h₁ (a + b - 1 - (a - 1) - (b - 1)),
  have h₇ := h₁ (a + b - 1 - (a - 1) - (b - 1) - 1),
  have h₈ := h₁ (a + b - 1 - (a - 1) - (b - 1) - 1 - (a - 1)),
  have h₉ := h₁ (a + b - 1 - (a - 1) - (b - 1) - 1 - (a - 1) - (b - 1)),
  have h₁₀ := h₁ (a + b - 1 - (a - 1) - (b - 1) - 1 - (a - 1) - (b - 1) - 1
end
