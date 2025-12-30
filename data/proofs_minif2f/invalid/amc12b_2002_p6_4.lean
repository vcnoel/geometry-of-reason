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
  have h₃ := h₁ 1,
  have h₄ := h₁ (-1),
  have h₅ := h₁ (1/2),
  have h₆ := h₁ (-1/2),

  -- h₂
  have h₇ := h₂.simplify,
  have h₈ := h₇.solve,
  have h₉ := h₈.1,

  -- h₃
  have h₁₀ := h₃.simplify,
  have h₁₁ := h₁₀.solve,
  have h₁₂ := h₁₁.1,

  -- h₄
  have h₁₃ := h₄.simplify,
  have h₁₄ := h₁₃.solve,
  have h₁₅ := h₁₄.1,

  -- h₅
  have h₁₆ := h₅.simplify,
  have h₁₇ := h₁₆.solve,
  have h₁₈ := h₁₇.1,

  -- h₆
  have h₁₉ := h₆.simplify,
  have h₂₀ := h₁₉.solve,

end
