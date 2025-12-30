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

  have h₁ : ∀ (n : ℕ), n ∈ S → n^2 - 3 * n + 2 = 1,
  { intros n hn,
    exact h₀.mpr hn },
  have h₂ : ∀ (n : ℕ), n ∈ S → n^2 + 2 - 3 * n = 1,
  { intros n hn,
    exact h₀.mp hn },
  have h₃ : ∀ (n : ℕ), n ∈ S → nat.prime (n^2 - 3 * n + 2),
  { intros n hn,
    exact h₀.mpr hn },
  have h₄ : ∀ (n : ℕ), n ∈ S → nat.prime (n^2 + 2 - 3 * n),
  { intros n hn,
    exact h₀.mpr hn },
  have h₅ : ∀ (n : ℕ), n ∈ S → n^2 - 3 * n + 2 = n^2 + 2 - 3 * n,
  { intros n hn,
    exact h₁ hn },
  have h₆ : ∀ (n : ℕ), n ∈ S → n^2 - 3 * n + 
end
