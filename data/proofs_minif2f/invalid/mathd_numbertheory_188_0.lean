import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  -- First, we need to calculate the GCD of 180 and 168.
  -- We can use the Euclidean algorithm to do this.
  -- The Euclidean algorithm works by repeatedly applying the following steps:
  --   - Divide the larger number by the smaller number.
  --   - Take the remainder as the new smaller number.
  --   - Repeat until the remainder is 0.
  -- The GCD is the last non-zero remainder.

  -- First, we divide 180 by 168.
  let r1 := 180 % 168,
    r2 := 168 % r1,

  -- Then, we divide 168 by r1.
  let r3 := 168 % r1,

  -- Next, we divide r1 by r3.
  let r4 := r1 % r3,

  -- Then, we divide r3 by r4.
  let r5 := r3 % r4,

  -- Next, we divide r4 by r5.
  let r6 := r4 % r5,

  -- Then, we divide r5 by r6.
  let r7 := r5 % r6,

  -- Next, we divide r6 by r7.
 
end
