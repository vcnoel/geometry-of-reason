import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p25
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : 0 < b)
  (h₁ : ∀ x, f x = real.sqrt (a * x^2 + b * x))
  (h₂ : {x | 0 ≤ f x} = f '' {x | 0 ≤ f x}) :
  a = 0 ∨ a = -4 :=
begin

  cases h₂ with h₂ h₂,
  { by_contra h,
    push_neg at h,
    have h₃ := h₂ h,
    have h₄ := h₁ h,
    have h₅ := h₀,
    have h₆ := h₄,
    have h₇ := h₃ h₆,
    have h₈ := h₇,
    have h₉ := h₆,
    have h₁₀ := h₈ h₉,
    have h₁₁ := h₁ h₁₀,
    have h₁₂ := h₆ h₁₁,
    have h₁₃ := h₄ h₁₂,
    have h₁₄ := h₇ h₁₃,
    have h₁₅ := h₃ h₁₄,
    have h₁₆ := h₆ h₁₅,
    have h₁₇ := h₇ h₁₆,
    have h₁₈ := h₆ h₁₇,
    have h₁₉ := h₇ h₁₈,
    have h₂₀ := h₁₉,
    have h₂₁ := h₆ h₂₀,

end
