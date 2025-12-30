import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_509 :
  real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) = 13 / 6 :=
begin

  congruence (real.sqrt 80 / real.sqrt 5) > 0,
  congruence (real.sqrt 845 / 9) > 0,
  congruence (real.sqrt 45) > 0,
  congruence (real.sqrt 5) > 0,
  congruence (real.sqrt 80 / real.sqrt 5) < 0,
  congruence (real.sqrt 845 / 9) < 0,
  congruence (real.sqrt 45) < 0,
  congruence (real.sqrt 5) < 0,
  congruence (real.sqrt 80 / real.sqrt 5) > real.sqrt 80,
  congruence (real.sqrt 845 / 9) > real.sqrt 845,
  congruence (real.sqrt 45) > real.sqrt 45,
  congruence (real.sqrt 5) > real.sqrt 5,
  congruence (real.sqrt 80 / real.sqrt 5) < real.sqrt 80,
  congruence (real.sqrt 845 / 9) < real.sqrt 845,
  congruence (real.sqrt 45) < real.sqrt 45,

end
