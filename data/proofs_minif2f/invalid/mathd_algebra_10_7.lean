import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- First, let's calculate the value of the first expression
  -- ((120 : ℝ)/100 * 30) = (3 * 30) = 90
  -- ((130 : ℝ)/100 * 20) = (13/10 * 20) = 26
  -- So the expression becomes 90 - 26 = 64
  -- The absolute value of 64 is 64
  -- Therefore, we can conclude that the absolute value of the expression is 10
  -- But we made an error, the absolute value of 64 is 64, not 10
  -- We made an error in the proof, we need to correct it
  have h1 : ((120 : ℝ)/100 * 30) = 90,
    by {calc ((120 : ℝ)/100 * 30) = (3 * 30) : by {refl}
       ... = 90 : by {refl}},
  have h2 : ((130 : ℝ)/100 * 20) = 26,
    by {calc ((130 : ℝ)/100 * 20) = (13/10 * 20) : by {refl}
       ... = 26 :
end
