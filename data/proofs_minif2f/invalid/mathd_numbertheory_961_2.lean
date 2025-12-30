import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_961 :
  2003 % 11 = 1 :=
begin

  have := 2003 % 11,
  rw nat.mod_eq_sub_of_lt at this,
  have := 2003 - 2003 % 11,
  have := this - this,
  have := (2003 - 2003 % 11) % 11,
  have := (2003 - 2003 % 11) % 11 = 0,
  rw nat.mod_eq_zero at this,
  have := 2003 % 11 = 0,
  have := 2003 % 11 = 1,
  contradiction,
  have := 2003 % 11 = 1,
  exact this,

end
