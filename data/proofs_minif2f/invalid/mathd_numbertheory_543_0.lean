import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  -- Step 1: First, let's calculate the divisors of 30^4.
  let divisors_of_30_pow_4 : finset ℕ := (nat.divisors (30^4)),
  -- Step 2: Calculate the sum of the divisors of 30^4.
  let sum_of_divisors : ℝ := ∑ k in divisors_of_30_pow_4, 1,
  -- Step 3: Calculate the value of the expression (∑ k in (nat.divisors (30^4)), 1) - 2.
  -- Since the sum of divisors of 30^4 is equal to 1232, we can calculate the final result.
  calc (∑ k in (nat.divisors (30^4)), 1) - 2 = 1232 - 2 : rfl

end
