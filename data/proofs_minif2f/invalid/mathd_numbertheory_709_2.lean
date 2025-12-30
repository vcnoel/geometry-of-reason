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

  have h₃ : 0 < n,
  from h₀,

  have h₄ : (finset.card (nat.divisors (6 * n))) =
  (finset.card (nat.divisors (2 * n))) *
  (finset.card (nat.divisors (3 * n))),
  from
    finset.card_product (finset.insert 1 (finset.range 2)) (finset.insert 1 (finset.range 3)),
  have h₅ : (finset.card (nat.divisors (2 * n))) = 28,
  from h₁,
  have h₆ : (finset.card (nat.divisors (3 * n))) = 30,
  from h₂,
  have h₇ : (finset.card (nat.divisors (2 * n))) * (finset.card (nat.divisors (3 * n))) = 28 * 30,
  from mul_comm (finset.card (nat.divisors (2 * n))) (finset.card (nat.divisors (3 * n))),
  have h₈ : 28 * 30 = 840,
  from nat.mul_comm 28 30,
  have h₉ : 
end
