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
  have h₄ := h₁ (a + b + 1),
  have h₅ := h₁ (a + b + 2),
  have h₆ := h₁ (a + b + 3),
  have h₇ := h₁ (a + b + 4),
  have h₈ := h₁ (a + b + 5),
  have h₉ := h₁ (a + b + 6),
  have h₁₀ := h₁ (a + b + 7),
  have h₁₁ := h₁ (a + b + 8),
  have h₁₂ := h₁ (a + b + 9),
  have h₁₃ := h₁ (a + b + 10),
  have h₁₄ := h₁ (a + b + 11),
  have h₁₅ := h₁ (a + b + 12),
  have h₁₆ := h₁ (a + b + 13),
  have h₁₇ := h₁ (a + b + 14),
  have h₁₈
end
