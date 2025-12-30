import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2003_p6
  (a r : ℝ)
  (u : ℕ → ℝ)
  (h₀ : ∀ k, u k = a * r^k)
  (h₁ : u 1 = 2)
  (h₂ : u 3 = 6) :
  u 0 = 2 / real.sqrt 3 ∨ u 0 = - (2 / real.sqrt 3) :=
begin

  cases h₁,
  cases h₂,
  have h₃ := h₀ 0,
  have h₄ := h₀ 1,
  have h₅ := h₀ 2,
  have h₆ := h₀ 3,
  have h₇ := h₀ 4,
  have h₈ := h₀ 5,
  have h₉ := h₀ 6,
  have h₁₀ := h₀ 7,
  have h₁₁ := h₀ 8,
  have h₁₂ := h₀ 9,
  have h₁₃ := h₀ 10,
  have h₁₄ := h₀ 11,
  have h₁₅ := h₀ 12,
  have h₁₆ := h₀ 13,
  have h₁₇ := h₀ 14,
  have h₁₈ := h₀ 15,
  have h₁₉ := h₀ 16,
  have h₂₀ := h₀ 17,
  have h₂₁ := h₀ 18,
  have h₂₂ := h₀ 19,
  have h₂₃ := h₀ 20,
  have h₂₄ := h₀ 
end
