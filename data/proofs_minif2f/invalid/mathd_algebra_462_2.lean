import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_462 :
  ((1 : ℚ)/ 2 + 1 / 3) * (1 / 2 - 1 / 3) = 5 / 36 :=
begin

  -- First, we simplify the left-hand side of the equation
  calc ((1 : ℚ)/ 2 + 1 / 3) * (1 / 2 - 1 / 3)
  = (1 / 6 + 2 / 6) * (1 / 6 - 2 / 6) : by ring
  -- Next, we simplify the expression using the distributive law
  = (3 / 6) * (-1 / 6) : by ring
  -- Then, we simplify the expression further
  = -1 / 36 : by ring
  -- Finally, we simplify the expression to get the right-hand side of the equation
  = 5 / 36 : by ring,

end
