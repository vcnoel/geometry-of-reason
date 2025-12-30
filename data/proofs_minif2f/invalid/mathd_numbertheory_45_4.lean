import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_45 :
  (nat.gcd 6432 132) + 11 = 23 :=
begin

  -- The gcd of two numbers is the largest number that divides both of them.
  -- So, we can use the mathlib library's gcd function to calculate it.
  -- Then we add 11 to the result and check if it equals 23.
  let gcd := nat.gcd 6432 132,
  -- Calculate the gcd.
  -- The gcd of 6432 and 132 is 12.
  calc gcd = 12,
  -- Add 11 to the result.
  -- 12 + 11 = 23.
  calc gcd + 11 = 23,
  -- So, the statement is true.
  exact rfl

end
