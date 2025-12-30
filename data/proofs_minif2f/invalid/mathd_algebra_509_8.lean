import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_509 :
  real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) = 13 / 6 :=
begin

  use minif2f_import.of_leq ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) < (13 / 6),
  use minif2f_import.of_leq ((13 / 6) * (13 / 6) / real.sqrt 5) < (5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5,
  use minif2f_import.of_leq (5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) < (13 / 6) * (13 / 6) / real.sqrt 5,
  use minif2f_import.of_leq (13 / 6) * (13 / 6) / real.sqrt 5) < (5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5,
  use minif2f_import.of_leq ((13 / 6) * (13 / 6) / real.sqrt 5) * real.sqrt 5) < (5 / real.sqrt
end
