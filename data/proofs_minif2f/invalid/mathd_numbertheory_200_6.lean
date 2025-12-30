import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_200 :
  139 % 11 = 7 :=
begin

  calc 139 = 130 + 9,
    by ring,
  calc 139 % 11 = (130 + 9) % 11,
    by congr,
  calc 139 % 11 = 130 % 11 + 9 % 11,
    by (linarith; ring),
  calc 139 % 11 = 1 + 9,
    by ring,
  calc 139 % 11 = 10,
    by ring,
  calc 139 % 11 = 7,
    by ring,

end
