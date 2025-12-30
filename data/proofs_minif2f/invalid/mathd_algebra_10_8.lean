import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  calc
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20)
       = abs ((120/100) * 30 - (130/100) * 20)
      ... = abs (1.2 * 30 - 1.3 * 20)
      ... = abs (36 - 26)
      ... = abs 10,

end
