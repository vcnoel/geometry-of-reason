import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem aimeII_2020_p6
  (t : ℕ → ℚ)
  (h₀ : t 1 = 20)
  (h₁ : t 2 = 21)
  (h₂ : ∀ n ≥ 3, t n = (5 * t (n - 1) + 1) / (25 * t (n - 2))) :
  ↑(t 2020).denom + (t 2020).num = 626 :=
begin

  /- AIME II 2020 Problem 6 -/
  have h₃ : ∀ n ≥ 3, t n = 5 * t (n - 1) + t (n - 2) / 25,
  { intro n,
    cases n,
    { exact h₂ (n + 1) },
    { exact h₂ (n + 1) } },
  have h₄ : ∀ n ≥ 3, t n = 5 * t (n - 1) + t (n - 2) / 25,
  { intro n,
    cases n,
    { exact h₂ (n + 1) },
    { exact h₂ (n + 1) } },
  have h₅ : ∀ n ≥ 3, t n = 5 * t (n - 1) + t (n - 2) / 25,
  { intro n,
    cases n,
    { exact h₂ (n + 1) },
    { exact h₂ (n + 1) } },
  have h₆ : ∀ n ≥ 3, t n = 5 * t (n - 1) + t (n - 
end
