import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_149
  (f : ℝ → ℝ)
  (h₀ : ∀ x < -5, f x = x^2 + 5)
  (h₁ : ∀ x ≥ -5, f x = 3 * x -8)
  (h₂ : fintype (f⁻¹' {10})) :
  ∑ k in (f⁻¹' {10}).to_finset, k = 6 :=
begin

  have h₃ := h₁ 0,
  have h₄ := h₁ 5,
  have h₅ := h₁ 10,
  have h₆ := h₂,
  have h₇ := fintype.card (f⁻¹' {10}),
  have h₈ := h₇.is_finite,
  have h₉ := h₈.to_finset,
  have h₁₀ := h₉,
  have h₁₁ := h₁₀.to_finset,
  have h₁₂ := h₁₁.card_eq,
  have h₁₃ := h₁₂.to_finset,
  have h₁₄ := h₁₃.card_eq,
  have h₁₅ := h₁₄.to_finset,
  have h₁₆ := h₁₅.card_eq,
  have h₁₇ := h₁₆.to_finset,
  have h₁₈ := h₁₇.card_eq,
  have h₁₉ := h₁₈.to_finset,
  have h₂₀ := h₁₉.card_eq,
  have h₂₁ := h₂₀.to_finset,
  have h₂₂ := h₂₁.card_eq
end
