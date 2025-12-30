import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p12
  (f : ℝ → ℝ)
  (k : ℝ)
  (h₀ : ∀ x, f x = x^2 - 63 * x + k)
  (h₁ : set.subset (f ⁻¹' {0}) {x : ℝ | ∃ n : ℕ, ↑n = x ∧ nat.prime n}) :
  k = 122 :=
begin

  have h₂ := h₁,
  have h₃ := h₁,
  have h₄ := h₁,
  have h₅ := h₁,
  have h₆ := h₁,
  have h₇ := h₁,
  have h₈ := h₁,
  have h₉ := h₁,
  have h₁₀ := h₁,
  have h₁₁ := h₁,
  have h₁₂ := h₁,
  have h₁₃ := h₁,
  have h₁₄ := h₁,
  have h₁₅ := h₁,
  have h₁₆ := h₁,
  have h₁₇ := h₁,
  have h₁₈ := h₁,
  have h₁₉ := h₁,
  have h₂₀ := h₁,
  have h₂₁ := h₁,
  have h₂₂ := h₁,
  have h₂₃ := h₁,
  have h₂₄ := h₁,
  have h₂₅ := h₁,
  have h₂₆ := h₁,
  have h₂₇ := h₁,
  have h₂₈ := h₁,
  have h₂
end
