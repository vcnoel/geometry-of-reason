import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_132 :
  2004 % 12 = 0 :=
begin

  -- Calculate 2004 % 12
  calc 2004 % 12 = 2004 - 12 * 167 : by ring,
  -- Since 2004 - 12 * 167 is 0, then 2004 % 12 = 0
  exact 0,

end
