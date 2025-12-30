import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  calc abs ((120 : ℝ)/100 * 30 - 130/100 * 20)
       = abs ((12 : ℝ)/10 * 30 - 13/10 * 20)
       : by ring_nf
 ... = abs (360/10 - 260/10)
       : by ring_nf
 ... = abs (100/10)
       : by ring_nf
 ... = 10
       : by norm_num

end
