import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  -- We need to find the gcd of 180 and 168.
  -- We can do this using the Euclidean algorithm.
  -- First, we divide 180 by 168 to get a quotient and a remainder.
  let quotient := 180 / 168,
  let remainder := 180 % 168,
  -- Now we have 180 = 168 * quotient + remainder.
  -- We can now replace 180 in the gcd calculation with this expression.
  have gcd_180 := nat.gcd 168 (remainder),
  -- Now we need to show that the gcd of 168 and the remainder is 12.
  -- We can do this by showing that 12 divides both 168 and the remainder.
  -- First, we show that 12 divides 168.
  have div_168 := 168 % 12 = 0,
  -- Now we show that 12 divides the remainder.
  have div_remainder := remainder % 12 = 0,
  -- Now we can conclude that the gcd of 180 and 168 is 12.
  show nat.gcd 180 168 = 12,
  -- We can do this by showing that 12 divides both 180 and 168.
 
end
