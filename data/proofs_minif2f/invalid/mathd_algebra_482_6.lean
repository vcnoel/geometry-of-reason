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
  have h₉ : ∀ x, f x = (x - 6)^2 - 35,
  { intro x,
    have h₁₀ : x^2 - 12*x + k = (x - 6)^2 - 35,
    { have h₁₁ : x^2 - 12*x + 36 = (x - 6)^2,
      { ring },
      have h₁₂ : (x - 6)^2 - 36 = (x - 6)^2 - 35,
      { ring },
      have h₁₃ : x^2 - 12*x + k = (x - 6)^2 - 35,
      { rw [h₁₁, h₁₂] },
      exact h₁₃ },
    exact h₁₀ },
  have h₁₀ : m ≠ n,
  { exact h₈ },
  have h₁₁ : f m = f n,
  { rw [h₆, h₇] },
  have h₁₂ : (m - 6)^2 - 35
end
