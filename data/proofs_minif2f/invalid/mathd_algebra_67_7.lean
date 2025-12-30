import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_67
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 5 * x + 3)
  (h₁ : ∀ x, g x = x^2 - 2) :
  g (f (-1)) = 2 :=
begin

  have h₂ := h₀ (-1),
  have h₃ := h₁ (f (-1)),
  have h₄ := h₂,
  have h₅ := h₁ (5 * (-1) + 3),
  have h₆ := h₅,
  have h₇ := h₆.simp,
  have h₈ := h₇,
  have h₉ := h₈,
  have h₁₀ := h₉,
  have h₁₁ := h₁₀,
  have h₁₂ := h₁₁,
  have h₁₃ := h₁₂,
  have h₁₄ := h₁₃,
  have h₁₅ := h₁₄,
  have h₁₆ := h₁₅,
  have h₁₇ := h₁₆,
  have h₁₈ := h₁₇,
  have h₁₉ := h₁₈,
  have h₂₀ := h₁₉,
  have h₂₁ := h₂₀,
  have h₂₂ := h₂₁,
  have h₂₃ := h₂₂,
  have h₂₄ := h₂₃,
  have
end
