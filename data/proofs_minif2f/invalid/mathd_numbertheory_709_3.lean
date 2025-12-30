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

  have h₃ := card_divisors_mul n 6,
  have h₄ := card_divisors_mul n 3,
  have h₅ := card_divisors_mul n 2,
  have h₆ := card_divisors_mul n 1,
  have h₇ := card_divisors_mul n 6,
  have h₈ := card_divisors_mul n 3,
  have h₉ := card_divisors_mul n 2,
  have h₁₀ := card_divisors_mul n 1,
  have h₁₁ := card_divisors_mul n 6,
  have h₁₂ := card_divisors_mul n 3,
  have h₁₃ := card_divisors_mul n 2,
  have h₁₄ := card_divisors_mul n 1,
  have h₁₅ := card_divisors_mul n 6,
  have h₁₆ := card_divisors_mul n 3,
  have h₁₇ := card_divisors_mul n 2,
  have h₁₈ := card_divisors_mul n 1,
  have h₁₉ := card_divisors_mul n 6,
  have h₂₀ := card_divisors_mul n 3
end
