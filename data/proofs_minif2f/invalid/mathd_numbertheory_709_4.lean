import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_709
  (n : ℕ)
  (h₀ : 0 < n)
  (h₁ : finset.card (nat.divisors (2 * n)) = 28)
  (h₂ : finset.card (nat.divisors (3 * n)) = 30) :
  finset.card (nat.divisors (6 * n)) = 35 :=
begin

  have h₃ : ∀ d, d ∈ nat.divisors (6 * n) → d = 1 ∨ d = 2 ∨ d = 3 ∨ d = 6 ∨ d = n ∨ d = 2 * n ∨ d = 3 * n ∨ d = 6 * n,
  from nat.divisor_multiples_le n 6,
  have h₄ : finset.card (nat.divisors (6 * n)) = finset.card {d | d ∈ nat.divisors (6 * n)},
  by {apply finset.card_congr, intros a ha, exact h₃ a ha},
  have h₅ : finset.card (nat.divisors (6 * n)) = finset.card {d | d ∈ nat.divisors (2 * n)} + finset.card {d | d ∈ nat.divisors (3 * n)} - finset.card {d | d ∈ nat.divisors (6 * n)},
  from finset.card_disjoint_union (finset.filter h₃) (finset.filter (λ d, 2 * n % d = 0 ∧ 3 * n % d = 0 ∧ 6 * n % d ≠ 0)) (finset
end
