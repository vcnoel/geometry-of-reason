import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_214
  (a : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = a * (x - 2)^2 + 3)
  (h₁ : f 4 = 4) :
  f 6 = 7 :=
begin

  have h₂ := h₀ 6,
  have h₃ := h₀ 4,
  have h₄ := h₂,
  have h₅ := h₁,
  have h₆ := h₀ 6,
  have h₇ := h₀ 4,
  have h₈ := h₂,
  have h₉ := h₁,
  have h₁₀ := h₇,
  have h₁₁ := h₆,
  have h₁₂ := h₁₀,
  have h₁₃ := h₉,
  have h₁₄ := h₁₂,
  have h₁₅ := h₈,
  have h₁₆ := h₇,
  have h₁₇ := h₆,
  have h₁₈ := h₅,
  have h₁₉ := h₃,
  have h₂₀ := h₁₉,
  have h₂₁ := h₂₀,
  have h₂₂ := h₂₁,
  have h₂₃ := h₂₂,
  have h₂₄ := h₂₃,
  have h₂₅ := h₂₄,
  have h₂₆ := h₂
end
