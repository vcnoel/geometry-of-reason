import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_81 :
  71 % 3 = 2 :=
begin

  -- First, we need to show that 71 is greater than 0.
  have h1 : 71 > 0 := by norm_num,

  -- Next, we need to show that 71 is less than 3 times 24.
  have h2 : 71 < 3 * 24 := by norm_num,

  -- Now, we need to show that 71 minus 24 times 3 is less than 24.
  have h3 : 71 - 24 * 3 < 24 := by norm_num,

  -- Finally, we need to show that 71 minus 24 times 3 is greater than 0.
  have h4 : 71 - 24 * 3 > 0 := by norm_num,

  -- We can now use the definition of the modulo operation to show that 71 modulo 3 is equal to 2.
  show 71 % 3 = 2,
  calc 71 % 3 = 71 - 24 * 3 : by refl
 ... = 71 - 24 * 3 : by refl
 ... = 2 : by norm_num,

end
