import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_73
  (p q r x : ℂ)
  (h₀ : (x - p) * (x - q) = (r - p) * (r - q))
  (h₁ : x ≠ r) :
  x = p + q - r :=
begin

  have h₂ := h₀,
  have h₃ := by {
    rw h₂,
    ring,
  },
  have h₄ := by {
    by_contradiction h₅ : x ≠ p + q - r,
    have h₆ := by {
      have h₇ := by {
        have h₈ := by {
          have h₉ := by {
            have h₁₀ := h₅,
            have h₁₁ := h₁,
            have h₁₂ := h₆,
            have h₁₃ := h₃,
            have h₁₄ := h₁₁,
            have h₁₅ := h₅,
            have h₁₆ := h₁₁,
            have h₁₇ := h₇,
            have h₁₈ := h₁₁,
            have h₁₉ := h₇,
            have h₂₀ := by {
              have h₂₁ := h₇,
              have h₂₂ := h₁₁,
              have h₂₃ := h₂₁,
              have h₂₄ := h₁₁,
              have h₂₅ := h₂₁,
              have h₂₆ := h₂₂
end
