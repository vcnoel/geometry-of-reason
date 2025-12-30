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

  have h₆ : m * n ≠ 0,
  by
  { intro h,
    have h₇ : m = 0 ∨ n = 0,
    by linarith,
    cases h₇,
    { exfalso,
      exact h₅ h },
    { exfalso,
      exact h₅ h } },
  have h₈ : m ≠ 1 ∨ n ≠ 1,
  by
  { intro h,
    have h₉ : m = 1 ∨ n = 1,
    by linarith,
    cases h₉,
    { exfalso,
      exact h₅ h },
    { exfalso,
      exact h₅ h } },
  have h₁₀ : f (m + n) = (m + n)^2 - 12 * (m + n) + k,
  by
  { simp [h₂] },
  have h₁₁ : (m + n)^2 - 12 * (m + n) + k = 0,
  by
  { simp [h₁₀, h₃, h₄] },
  have h₁₂ : m ≠ n → m ≠ 1,

end
