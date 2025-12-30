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

  -- note: if n = 1, then n^2 + 2 - 3n = 0, which is not prime
  --       so we can't have both 1 and another number in S
  --       so S can only contain 1
  have h₁ : ∀ (n : ℕ), n ∈ S → n ≠ 1 → n^2 + 2 - 3 * n ≠ 0,
    assume n h₂ h₃,
    have h₄ : n^2 + 2 - 3 * n = 0,
      by linarith,
    have h₅ : 1 = n,
      by linarith,
    show n ≠ n,
      by linarith,

  -- note: for any number n in S that is not 1, we can find its corresponding prime number
  have h₂ : ∀ (n : ℕ), n ∈ S → n ≠ 1 → ∃ (p : ℕ), nat.prime p ∧ n^2 + 2 - 3 * n = p,
    assume n h₂ h₃,
    have h₄ : n^2 + 2 - 3 * n ≠ 0,
      by apply
end
