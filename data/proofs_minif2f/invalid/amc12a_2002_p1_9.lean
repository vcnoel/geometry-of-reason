import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p1
  (f : ℂ → ℂ)
  (h₀ : ∀ x, f x = (2 * x + 3) * (x - 4) + (2 * x + 3) * (x - 6))
  (h₁ : fintype (f ⁻¹' {0})) :
  ∑ y in (f⁻¹' {0}).to_finset, y = 7 / 2 :=
begin

  have h₂ := h₀ 1,
  have h₃ := h₀ 2,
  have h₄ := h₀ 3,
  have h₅ := h₀ 4,
  have h₆ := h₀ 5,
  have h₇ := h₀ 6,
  have h₈ := h₀ 7,
  have h₉ := h₀ 8,
  have h₁₀ := h₀ 9,
  have h₁₁ := h₀ 10,
  have h₁₂ := h₀ 11,
  have h₁₃ := h₀ 12,
  have h₁₄ := h₀ 13,
  have h₁₅ := h₀ 14,
  have h₁₆ := h₀ 15,
  have h₁₇ := h₀ 16,
  have h₁₈ := h₀ 17,
  have h₁₉ := h₀ 18,
  have h₂₀ := h₀ 19,
  have h₂₁ := h₀ 20,
  have h₂₂ := h₀ 21,
  have h₂₃ := h₀ 22,
  have h₂₄ := h₀ 
end
