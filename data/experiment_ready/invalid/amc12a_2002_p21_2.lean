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
  induction n with n IH,
  { rw [finset.range_zero, finset.sum_empty],
    exact absurd (0 > 10000) (not_lt.mpr (le_refl 0)) },
  { rw finset.sum_insert,
    rw [finset.range_succ, finset.sum_insert],
    { have h₃ : ∀ m, u m ≤ 9, from λ m, by
      { cases m with m,
        { exact le_of_eq h₀ },
        { cases m with m,
          { exact le_of_eq h₁ },
          { exact le_of_lt (h₂ m) } } },
      have h₄ : u (n + 1) ≤ 9, from h₃ _,
      have h₅ : u n ≤ 9, from h₃ _,
      have h₆ : u (n + 1) + u n ≤ 18, from add_le_add h₄ h₅ },
    { have h₇ : u (n + 1) + u n ≥ 13, from add_ge_of_le_of_lt h₄ h₅,
      have h₈ : u (n + 1) + u n
end
