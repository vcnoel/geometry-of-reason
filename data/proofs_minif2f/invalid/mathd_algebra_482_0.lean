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

  have h₁₅ : m ≠ 1 ∧ n ≠ 1,
  { split,
    { intro h,
      exact h₀ h rfl },
    { intro h,
      exact h₁ h rfl } },
  have h₁₆ : m > 1 ∧ n > 1,
  { split,
    { intro h,
      exact h₀ h rfl },
    { intro h,
      exact h₁ h rfl } },
  have h₁₇ : m ≥ 2 ∧ n ≥ 2,
  { split,
    { apply nat.le_two_iff.mp,
      exact h₁₆.1 },
    { apply nat.le_two_iff.mp,
      exact h₁₆.2 } },
  have h₁₈ : m^2 - 12 * m + k = 0,
  { rw h₂,
    exact h₃ },
  have h₁₉ : n^2 - 12 * n + k = 0,
  { rw h₂,
    exact h₄ },
  have h₂₀ : (m - 6)^2 = 0,
  { have h₂₁ : m - 6 = 0,
    { rw [sub_eq_zero, mul
end
