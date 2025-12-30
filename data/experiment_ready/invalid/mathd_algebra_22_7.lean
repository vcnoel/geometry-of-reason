import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_22 :
  real.logb (5^2) (5^4) = 2 :=
begin

  -- We need to show that `real.logb (5^2) (5^4) = 2`.
  -- The definition of `real.logb` is `logb x y = log y / log x`.
  -- So, we can rewrite the equation as `log (5^4) / log (5^2) = 2`.
  -- Using the property of logarithm that `log a^b = b * log a`, we can rewrite the equation as `(4 * log 5) / (2 * log 5) = 2`.
  -- Cancelling out the `log 5` terms, we get `4 / 2 = 2`.
  -- This is a basic arithmetic property, and we can see that it's true.
  ring,

end
