import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_45 :
  (nat.gcd 6432 132) + 11 = 23 :=
begin

  -- Step 1: Define the problem and the goal
  -- We need to prove that (nat.gcd 6432 132) + 11 = 23

  -- Step 2: Use the definition of gcd
  have gcd := nat.gcd 6432 132,

  -- Step 3: Calculate the gcd
  have gcd_value := 4,

  -- Step 4: Add 11 to the gcd
  have gcd_plus_11 := gcd_value + 11,

  -- Step 5: Prove that the result is equal to 23
  have gcd_plus_11_eq_23 : gcd_plus_11 = 23,
  by simp,

  -- Step 6: Conclude the proof
  exact gcd_plus_11_eq_23,

end
