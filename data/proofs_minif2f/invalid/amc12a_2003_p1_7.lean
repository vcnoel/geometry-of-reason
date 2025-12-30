import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2003_p1
  (u v : ℕ → ℕ)
  (h₀ : ∀ n, u n = 2 * n + 2)
  (h₁ : ∀ n, v n = 2 * n + 1) :
  (∑ k in finset.range(2003), u k) - (∑ k in finset.range(2003), v k) = 2003 :=
begin

  have h₂ : ∀ k, u k = v k + 1,
  { intro k,
    exact (h₀ k).symm.sub (h₁ k).symm },
  have h₃ : ∀ k, u k - v k = 1,
  { intro k,
    exact (h₂ k).symm },
  have h₄ : ∀ k, v k ≤ u k,
  { intro k,
    exact (h₂ k).le },
  have h₅ : ∀ k, u k ≤ v k + 1,
  { intro k,
    exact (h₂ k).le },
  have h₆ : ∀ k, v k + 1 ≤ u k,
  { intro k,
    exact (h₂ k).ge },
  have h₇ : ∀ k, u k - v k = 1,
  { intro k,
    exact (h₃ k).symm },
  have h₈ : ∀ k, u k - 1 = v k,
  { intro k,
    exact (h₃ k).symm },
  have h₉ : ∀ k, u k - 1 = v k,
  { intro k,
    exact
end
