import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p7
  (s : ℕ → ℝ)
  (h₀: ∀ n, s (n + 2) = s (n + 1) + s n)
  (h₁ : s 9 = 110)
  (h₂ : s 7 = 42) :
  s 4 = 10 :=
begin

  have h₃ := h₀ 7,
  have h₄ := h₀ 8,
  have h₅ := h₀ 9,
  have h₆ := h₀ 10,
  have h₇ := h₀ 11,
  have h₈ := h₀ 12,
  have h₉ := h₀ 13,
  have h₁₀ := h₀ 14,
  have h₁₁ := h₀ 15,
  have h₁₂ := h₀ 16,
  have h₁₃ := h₀ 17,
  have h₁₄ := h₀ 18,
  have h₁₅ := h₀ 19,
  have h₁₆ := h₀ 20,
  have h₁₇ := h₀ 21,
  have h₁₈ := h₀ 22,
  have h₁₉ := h₀ 23,
  have h₂₀ := h₀ 24,
  have h₂₁ := h₀ 25,
  have h₂₂ := h₀ 26,
  have h₂₃ := h₀ 27,
  have h₂₄ := h₀ 28,
  have h₂₅ := h
end
