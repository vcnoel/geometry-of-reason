import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_151 :
  int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) = 1 :=
begin

  calc int.ceil (real.sqrt 27) - int.floor (real.sqrt 26)
    = int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) + 0 : by { simp }
 ... = int.ceil (real.sqrt 27) - (int.floor (real.sqrt 26) + 0) : by { simp }
 ... = int.ceil (real.sqrt 27) - int.floor (real.sqrt 26 + 0) : by { simp }
 ... = int.ceil (real.sqrt 27) - int.floor (real.sqrt 26) : by { simp }
 ... = 5 - 4 : by { calc int.ceil (real.sqrt 27) = 5 : by { calc real.sqrt 27 = 5 : by { calc 27 = 25 + 2 : by { refl } ; ring } ; int.ceil } ; calc int.floor (real.sqrt 26) = 4 : by { calc real.sqrt 26 = 4 : by { calc 26 = 25 + 1 : by { refl } ; ring } ; int.floor } }
 ... = 1 : by { ring }

end
