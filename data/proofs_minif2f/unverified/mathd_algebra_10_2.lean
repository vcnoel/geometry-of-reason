import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_10 :
  abs ((120 : ℝ)/100 * 30 - 130/100 * 20) = 10 :=
begin

  -- Calculate the value of the expression inside the absolute value.
  calc
    (120 : ℝ)/100 * 30 - 130/100 * 20 = (36 - 26)/10,
  -- Calculate the absolute value of the result.
  calc
    abs ((36 - 26)/10) = abs (10/10),
  -- Use the definition of absolute value to simplify the result.
  calc
    abs (10/10) = 10/10,
  -- Simplify the result.
  calc
    10/10 = 10,

end
