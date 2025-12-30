import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_188 :
  nat.gcd 180 168 = 12 :=
begin

  -- We need to find the greatest common divisor of 180 and 168.
  -- We can use the Euclidean algorithm to do this.
  -- First, we divide 180 by 168 and find the remainder.
  let r1 := 180 % 168,
  -- Then, we divide 168 by the remainder and find the new remainder.
  let r2 := 168 % r1,
  -- We continue this process until we get a remainder of 0.
  -- The last non-zero remainder is the greatest common divisor.
  -- In this case, the last non-zero remainder is 12.
  by_cases r2 = 0,
  { -- If the remainder is 0, then the last non-zero remainder is the greatest common divisor.
    exact r1 },
  { -- If the remainder is not 0, then we continue the process.
    let r3 := r1 % r2,
    by_cases r3 = 0,
    { -- If the remainder is 0, then the last non-zero remainder is the greatest common divisor.
      exact r2 },
    { -- If the remainder is not 0, then we continue the process.
      let r4 := r2 % r3,

end
