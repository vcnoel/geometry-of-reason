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

  have h₃ : finset.card (nat.divisors (6 * n)) = finset.card (nat.divisors (2 * n)) * finset.card (nat.divisors (3 * n)),
  by { apply multiset.card_congr,
       apply finset.map_congr,
       apply nat.divisors_mul_congr,
       apply nat.divisors_mul },
  have h₄ : 1 < finset.card (nat.divisors (2 * n)),
  by { apply finset.card_pos_of_mem,
       apply nat.divisors_nonempty,
       apply h₀ },
  have h₅ : 1 < finset.card (nat.divisors (3 * n)),
  by { apply finset.card_pos_of_mem,
       apply nat.divisors_nonempty,
       apply h₀ },
  have h₆ : finset.card (nat.divisors (2 * n)) * finset.card (nat.divisors (3 * n) = 28 * 30,
  by { apply finset.card_mul,
       apply h₁,
       apply h₂ },
  have h₇ : finset.card (nat.divisors (6 * n)) = 28 * 30,
  by { apply h₃,

end
