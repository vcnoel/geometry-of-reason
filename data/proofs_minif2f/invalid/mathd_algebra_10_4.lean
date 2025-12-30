import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  ring,
  abs_of_real (120/100 * 30 - 130/100 * 20),
  ring,
  abs_of_real (36 - 26),
  ring,
  abs_of_real 10,
  refl,

end
