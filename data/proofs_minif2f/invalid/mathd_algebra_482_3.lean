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

  have h₆ : m = n ∨ m ≠ n := by { exact decidable.em (m = n) },
  { cases h₆,
    { exfalso, exact h₅ h },
    { have h₇ : m ≠ n := h₅,
      have h₈ : f m = 0 := h₃,
      have h₉ : f n = 0 := h₄,
      have h₁₀ : ∀ x, f x = x^2 - 12 * x + k := h₂,
      have h₁₁ : m ≠ n := h₇,
      have h₁₂ : f m = 0 := h₈,
      have h₁₃ : f n = 0 := h₉,
      have h₁₄ : ∀ x, f x = x^2 - 12 * x + k := h₁₀,
      have h₁₅ : m ≠ n := h₁₁,
      have h₁₆ : f m = 0 := h₁₂,
      have h₁₇ : f n = 0 := h₁₃,
      have h₁₈ : ∀ x, f x = x^2
end
