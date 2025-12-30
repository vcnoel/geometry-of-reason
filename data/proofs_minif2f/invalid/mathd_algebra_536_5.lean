import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_536 :
  ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2 = (33 : ℝ) :=
begin

  calc
    ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2
      = (6 * (8 + 3)) / 2 : by norm_num
   ... = (6 * 11) / 2 : by ring
   ... = 66 / 2 : by ring
   ... = 33 : by ring,

end
