import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  -- first, we need to find the prime factors of both numbers
  -- we can use the function prime_factors to do this
  let factors_180 := prime_factors 180,
  let factors_168 := prime_factors 168,

  -- now we need to find the greatest common divisor (GCD) of both numbers
  -- we can use the function gcd to do this
  let gcd := gcd factors_180 factors_168,

  -- we know that the GCD is 12, so we can equate the two expressions
  -- and simplify to find the final answer
  rw gcd,
  -- the final answer is 12
  show 12 = 12,
  refl,

end
