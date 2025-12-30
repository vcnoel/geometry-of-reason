import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  calc
    int.ceil (real.sqrt 27) - int.floor (real.sqrt 26)
    = int.ceil (real.sqrt 27) - 5
      : by { apply int.floor_eq_of_floor_lt; linarith }
    = 6 : by { apply int.ceil_eq_of_floor_lt; linarith },

end
