import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_482
  (m n : ℕ)
  (k : ℝ)
  (f : ℝ → ℝ)
  (h₀ : nat.prime m)
  (h₁ : nat.prime n)
  (h₂ : ∀ x, f x = x^2 - 12 * x + k)
  (h₃ : f m = 0)
  (h₄ : f n = 0)
  (h₅ : m ≠ n) :
  k = 35 :=
begin

  have h₆ := h₃,
  have h₇ := h₄,
  have h₈ := h₅,
  have h₉ := h₂ m,
  have h₁₀ := h₂ n,
  have h₁₁ := h₆,
  have h₁₂ := h₇,
  have h₁₃ := h₈,
  have h₁₄ := h₉,
  have h₁₅ := h₁₀,
  have h₁₆ := h₁₁,
  have h₁₇ := h₁₂,
  have h₁₈ := h₁₃,
  have h₁₉ := h₁₄,
  have h₂₀ := h₁₅,
  have h₂₁ := h₁₆,
  have h₂₂ := h₁₇,
  have h₂₃ := h₁₈,
  have h₂₄ := h₁₉,
  have h₂₅ := h₂₀,
  have h₂₆ := h₂₁,
  have h₂₇ := h₂₂,
  have h₂₈ := h₂₃,
  have h₂₉ := h₂�
end
