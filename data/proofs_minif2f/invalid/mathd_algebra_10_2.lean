import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- Calculate the expression inside the absolute value first
  let x := (120 : ℝ)/100 * 30 - 130/100 * 20,
  -- Now we can calculate the absolute value of x
  have abs_x : abs x = abs ((120 : ℝ)/100 * 30 - 130/100 * 20),
  -- Use the property of absolute value that |a-b| = |a| - |b|
  have abs_x_eq : abs_x = abs ((120 : ℝ)/100 * 30) - abs ((130 : ℝ)/100 * 20),
  -- Use the property of absolute value that |a*b| = |a| * |b|
  have abs_x_eq_2 : abs_x_eq = (abs ((120 : ℝ)/100)) * (abs (30)) - (abs ((130 : ℝ)/100)) * (abs (20)),
  -- Use the property of absolute value that |a/b| = |a| / |b|
  have abs_x_eq_3 : abs_x_eq_2 = (120/100) / (100) * 30 - (130/100) / (100) * 20,
  -- Now we can simplify
end
