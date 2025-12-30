import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  -- The proper divisors of 198 are 1, 2, 3, 9, 11, 18, 22, 33, 66, and 198
  let divisors := proper_divisors 198,
  -- There are 10 proper divisors of 198
  have h1 : length divisors = 10,
  by {simp [proper_divisors, nat.proper_divisors_def, nat.divisors, nat.factorial_prime, nat.factorial_def]},
  -- The sum of the proper divisors of 198 is 270
  have h2 : ∑ k in divisors, k = 270,
  
end
