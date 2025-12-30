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
      = abs ((12/10) * (30/1) - (13/10) * (20/1)) : by norm_num
   ... = abs (36/10 - 26/10) : by ring_nf
   ... = abs (10/10) : by ring_nf
   ... = 1 : by norm_num
   ... = 10 : by linarith,

end
