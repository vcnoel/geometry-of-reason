import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- 1 / 100 * 120 * 30 - 130 / 100 * 20 = 36 - 26 = 10
  calc
    (120 : ℝ)/100 * 30 - 130/100 * 20
      = 36 - 26
      : by ring_nf
   ... = 10
      : by ring_nf,

end
