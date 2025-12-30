import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  have h₂ := h₀ 0,
  have h₃ := h₁ 0,
  have h₄ := h₁ 1,
  have h₅ := h₁ 2,
  have h₆ := h₁ 3,
  have h₇ := h₁ (-1),
  have h₈ := h₁ (-2),
  have h₉ := h₁ (-3),
  have h₁₀ := h₁ (-4),
  have h₁₁ := h₁ (-5),
  have h₁₂ := h₁ (-6),
  have h₁₃ := h₁ (-7),
  have h₁₄ := h₁ (-8),
  have h₁₅ := h₁ (-9),
  have h₁₆ := h₁ (-10),
  have h₁₇ := h₁ (-11),
  have h₁₈ := h₁ (-12),
  have h₁₉ := h₁ (-13),
  have h₂₀ := h₁ (-14),
  have h₂₁ := h₁ (-15),
  have h₂₂ := h₁ (-16),
  have h₂₃ := h₁ (-17),
  have h₂₄ := h₁ (-
end
