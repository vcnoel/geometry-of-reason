import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2002_p21
  (u : ℕ → ℕ)
  (h₀ : u 0 = 4)
  (h₁ : u 1 = 7)
  (h₂ : ∀ n ≥ 2, u (n + 2) = (u n + u (n + 1)) % 10) :
  ∀ n, ∑ k in finset.range(n), u k > 10000 → 1999 ≤ n :=
begin

  intro n,
  by_cases h₃ : ∑ k in finset.range(n), u k ≤ 10000,
  { exact absurd h₃ (by linarith) },
  { have h₄ : ∑ k in finset.range(n), u k = 10001,
    by linarith,
    have h₅ : ∑ k in finset.range(n + 1), u k = 10012,
    by linarith,
    have h₆ : 1999 ≤ n + 1,
    by linarith,
    exact h₆ },

end
