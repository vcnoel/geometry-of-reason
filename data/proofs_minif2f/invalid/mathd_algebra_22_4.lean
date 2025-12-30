import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  -- 1 / (logb 5^2 5^4)
  rw logb_log,
  -- 1 / (2 * logb 5 5^4)
  rw logb_pow,
  -- 1 / (2 * 4 * logb 5 5)
  rw logb_pow,
  -- 1 / (8 * logb 5 1)
  rw logb_one,
  -- 1 / (8 * 0)
  rw logb_zero,
  -- 1 / 0
  exact 1 / 0,

end
