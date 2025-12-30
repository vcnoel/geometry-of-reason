import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  calc
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) =
      (real.sqrt 27).to_int - (real.sqrt 26).to_int : by refl
 ... = 5 - 5 : by {calc
      (real.sqrt 27).to_int = 5 : by norm_num
      (real.sqrt 26).to_int = 5 : by norm_num}
 ... = 1 : by refl,

end
