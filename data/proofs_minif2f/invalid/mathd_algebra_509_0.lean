import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_509 :
  real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) = 13 / 6 :=
begin

  with real.sqrt in {a := 0.. 1, b := 0.. 1},
  let g := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5),
  let h := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) - real.sqrt 845 / 9 - real.sqrt 45,
  let i := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) - real.sqrt 45,
  let j := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) - real.sqrt 845 / 9,
  let k := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) - real.sqrt 45,
  let l := real.sqrt ((5 / real.sqrt 80 + real.sqrt 845 / 9 + real.sqrt 45) / real.sqrt 5) -
end
