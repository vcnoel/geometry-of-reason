import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p3
  (S : finset ℕ)
  -- note: we use (n^2 + 2 - 3 * n) over (n^2 - 3 * n + 2) because nat subtraction truncates the latter at 1 and 2
  (h₀ : ∀ (n : ℕ), n ∈ S ↔ 0 < n ∧ nat.prime (n^2 + 2 - 3 * n)) :
  S.card = 1 :=
begin

  -- 1st case: S is empty
  have h₁ : S.card = 0, by {cases S, simp [finset.empty_eq],},
  -- 2nd case: S is non-empty
  have h₂ : ∀ (n : ℕ), n ∈ S → ∃ (m : ℕ), m ∈ S ∧ n = m,
  { intro n,
    -- 1st case: n is prime
    have h₃ : n ∈ S → n = n^2 + 2 - 3 * n,
    { intro h₄,
      have h₅ : n^2 - 3 * n + 2 = 1,
      by {rw [← sub_eq_zero, sub_sub],},
      have h₆ : n = n^2 + 2 - 3 * n,
      by {rw h₅, simp [sub_eq_zero],},
      exact h₆ },
    -- 2nd case: n is composite
    have h₇ : n ∈ S → n ≠ n^2 + 2 - 3 * n,
    { intro h₈,
      have h₉ : n^2 - 3 * n +
end
