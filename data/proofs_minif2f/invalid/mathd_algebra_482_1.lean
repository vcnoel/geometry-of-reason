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

  have h₆ : m = 5,
  { have h₇ : m * (m - 5) = 0,
    { rw [h₂, h₃],
      ring },
    exact nat.prime.factorization_pos_of_dvd h₀ h₇ },
  have h₈ : n = 7,
  { have h₉ : n * (n - 7) = 0,
    { rw [h₂, h₄],
      ring },
    exact nat.prime.factorization_pos_of_dvd h₁ h₉ },
  have h₁₀ : k = 35,
  { have h₁₁ : (m - 5) * (n - 7) = 0,
    { by_contradiction,
      intro h₁₂,
      have h₁₃ : m ≠ 5 ∨ n ≠ 7,
      { have h₁₄ : m ≠ n,
        { exact h₅ },
        have h₁₅ : m ≠ 5 ∨ n ≠ 7,
        { by_cases,
          { exact h₁₄ },
          { exact h₁₄ } },
        exact h₁₅ },
      have h₁₆
end
