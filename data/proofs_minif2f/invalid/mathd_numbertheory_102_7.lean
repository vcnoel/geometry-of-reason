import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  -- First, calculate 2^8
  let x := 2 ^ 8,
  -- Then, calculate the modulus
  have mod_x := x % 5,
  -- Finally, assert the result
  show mod_x = 1,
  -- The result is 1
  by { norm_num }

end
