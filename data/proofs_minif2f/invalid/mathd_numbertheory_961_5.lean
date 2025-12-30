import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_961 :
  2003 % 11 = 1 :=
begin

  apply_modulo 11,
  ring,
  norm_num,

end
