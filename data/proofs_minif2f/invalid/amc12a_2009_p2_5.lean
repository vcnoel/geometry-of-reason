import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p2 :
  1 + (1 / (1 + (1 / (1 + 1)))) = (5 : ℚ) / 3 :=
begin

  ring,
  field_simp,

end
