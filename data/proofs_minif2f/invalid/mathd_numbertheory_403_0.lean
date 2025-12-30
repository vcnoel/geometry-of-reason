import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  -- The sum of the proper divisors of 198 is 270.
  -- We will use the formula for the sum of the proper divisors of a number.
  -- The formula is: sum k in proper_divisors n, k = n - 1.

  -- The proper divisors of 198 are: 2, 3, 9, 11, 18, 33, 99.
  -- We will use the formula for the sum of the proper divisors of 198.
  -- The formula is: sum k in proper_divisors 198, k = 198 - 1.

  -- Now we will prove that the sum of the proper divisors of 198 is 270.
  have h1 : ∑ k in (nat.proper_divisors 198), k = 198 - 1,
  -- This is a simple arithmetic calculation.
  by {simp [nat.proper_divisors, sum_const, nat.succ_sub_one]};

  -- Now we will prove that 198 - 1 = 270.
  have h2 : 198 - 1 = 270,
  -- This is a simple arithmetic calculation.
  by {simp};

  -- Now we will
end
