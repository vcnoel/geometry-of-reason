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

  have h₃ := finset.card_divisors_of_prime_power 2 1,
  have h₄ := finset.card_divisors_of_prime_power 3 1,
  have h₅ := finset.card_divisors_of_prime_power 2 2,
  have h₆ := finset.card_divisors_of_prime_power 3 2,
  have h₇ := finset.card_divisors_of_prime_power 2 3,
  have h₈ := finset.card_divisors_of_prime_power 3 3,
  have h₉ := finset.card_divisors_of_prime_power 2 4,
  have h₁₀ := finset.card_divisors_of_prime_power 3 4,
  have h₁₁ := finset.card_divisors_of_prime_power 2 5,
  have h₁₂ := finset.card_divisors_of_prime_power 3 5,
  have h₁₃ := finset.card_divisors_of_prime_power 2 6,
  have h₁₄ := finset.card_divisors_of_prime_power 3 6,
  have h₁₅ := finset.card_divisors_of_prime_power 2 7,
  have h₁₆ := fin
end
