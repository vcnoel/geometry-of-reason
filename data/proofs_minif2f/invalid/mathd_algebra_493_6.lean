import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  have h₁ := h₀ 4,
  have h₂ := h₀ (f 4),
  have h₃ := h₁ ^ 2 - 4 * h₁ + 1,
  have h₄ := h₃ ^ 2 - 4 * h₃ + 1,
  have h₅ := h₂ = h₄,
  have h₆ := h₅.simp,
  have h₇ := h₆ rfl,
  have h₈ := h₇.simp,
  have h₉ := h₈ rfl,
  have h₁₀ := h₉.simp,
  have h₁₁ := h₁₀ rfl,
  have h₁₂ := h₁₁.simp,
  have h₁₃ := h₁₂ rfl,
  have h₁₄ := h₁₃.simp,
  have h₁₅ := h₁₄ rfl,
  have h₁₆ := h₁₅.simp,
  have h₁₇ := h₁₆ rfl,
  have h₁₈ := h₁₇.simp,
  have h₁₉ := h₁₈ rfl,
  have h₂₀ := h₁
end
