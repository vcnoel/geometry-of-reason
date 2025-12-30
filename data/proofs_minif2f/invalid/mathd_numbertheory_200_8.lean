import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_200 :
  139 % 11 = 7 :=
begin

  calc 139 % 11 = 139 - 11 * (139 / 11) : by { refl },
  ring_nf,
  ring,

end
