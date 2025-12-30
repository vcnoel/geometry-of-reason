import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  let N := 30^4,
  have h1 : ∑ k in (nat.divisors N), 1 = ∑ k in (nat.divisors (30^4)), 1,
  { symmetry, apply nat.divisors_mul },
  have h2 : ∑ k in (nat.divisors (30^4)), 1 = 124,
  { have h3 : (30^4 : ℤ) = 2^4 * 3^4 * 5^4,
    { ring },
    have h4 : ∀ k ∈ nat.divisors (30^4), ∃ a b c, k = 2^a * 3^b * 5^c ∧ 0 ≤ a ∧ a ≤ 4 ∧ 0 ≤ b ∧ b ≤ 4 ∧ 0 ≤ c ∧ c ≤ 4,
    { intros k hk,
      refine ⟨_, _, _, _, _, _⟩,
      exact nat.divisor_divisors_of_prime k 2,
      exact nat.divisor_divisors_of_prime k 3,
      exact nat.divisor_divisors_of_prime k 5,
      exact nat.divisor_le_one_of_not_divides k 2,
      exact nat.divisor
end
