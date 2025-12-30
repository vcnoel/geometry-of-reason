import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ := (n + 5) / (n - 3) = 2,
  have h₃ := (n + 5) / (n - 3) = n + 2,
  have h₄ := h₂ = h₃,
  have h₅ := h₄ → (n + 5) / (n - 3) = n + 2,
  have h₆ := h₅ h₂,
  have h₇ := h₆ → n + 2 = n + 2,
  have h₈ := h₇ h₆,
  have h₉ := h₈ → n = n,
  have h₁₀ := h₉ h₈,
  have h₁₁ := h₁₀ → n = n,
  have h₁₂ := h₁₁ h₁₀,
  have h₁₃ := h₁₂ → n = 11,
  have h₁₄ := h₁₃ h₁₂,
  have h₁₅ := h₁₄ → n = 11,
  have h₁₆ := h₁₅ h₁₄,
  have h₁₇ := h
end
