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

  induction n with n ih,
  { rw finset.range_zero,
    exact finset.sum_empty },
  { have h₃ : u (n + 2) = u n + u (n + 1) % 10,
    { exact h₂ _ (finset.mem_range.mpr (finset.mem_range_succ n)) },
    have h₄ : u (n + 2) ≥ 7,
    { cases h₁ with h₁ h₁,
      { have h₅ : u (n + 1) ≥ 7,
        { exact h₁ },
        have h₆ : u n ≥ 4,
        { exact h₀ },
        have h₇ : u n + u (n + 1) ≥ 11,
        { exact add_nonneg h₆ h₅ },
        have h₈ : u n + u (n + 1) % 10 ≥ 1,
        { apply Nat.mod_lt, exact h₇ },
        exact le_trans h₈ h₃ },
      { exact h₁ } },
    have h₉ : ∑ k in finset.range(n + 2), u k ≥ ∑ k in finset.range(n
end
