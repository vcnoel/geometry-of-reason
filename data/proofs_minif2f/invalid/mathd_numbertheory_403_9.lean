import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  -- First, we need to find the prime factorization of 198
  let factors := prime_factorization 198,
  -- Next, we need to find the proper divisors of 198
  let divisors := proper_divisors 198,
  -- Now, we can use the formula for the sum of divisors of a number
  -- to calculate the sum of the proper divisors of 198
  have h1 := sum_divisors factors,
  -- Then, we need to subtract 198 from the sum to get the sum of the proper divisors
  have h2 := sub_eq_sub h1 198,
  -- Finally, we can use the result to prove the statement
  have h3 := eq.symm h2,
  show ∑ k in divisors, k = 270,
  by rw h3,

end
