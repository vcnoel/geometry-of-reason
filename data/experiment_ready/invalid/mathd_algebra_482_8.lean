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

  have h₆ : m ≠ n ∧ ∀ x, f x = x^2 - 12 * x + k := by
    rw [h₅, h₂],
  have h₇ : f (m - 1) = (m - 1)^2 - 12 * (m - 1) + k := by
    rw [h₂, sub_one],
  have h₈ : f (m - 1) = 0 := by
    rw [h₃, sub_one],
  have h₉ : f (m - 1) = (m - 1)^2 - 12 * (m - 1) + k := by
    rw [h₂, sub_one],
  have h₁₀ : m - 1 ≠ n := by
    rintro rfl,
    exact h₅ rfl,
  have h₁₁ : ∀ x, f x = x^2 - 12 * x + k := by
    rintro x,
    exact h₂ x,
  have h₁₂ : f (n - 1) = (n - 1)^2 - 12 * (n - 1) + k := by

end
