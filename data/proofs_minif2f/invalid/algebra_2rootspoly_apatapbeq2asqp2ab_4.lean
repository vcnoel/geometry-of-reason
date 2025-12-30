import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootspoly_apatapbeq2asqp2ab
  (a b : ℂ) :
  (a + a) * (a + b) = 2 * a^2 + 2 * (a * b) :=
begin

  -- First, expand the left-hand side
  -- This is a polynomial of degree 2, so we can expand it using the distributive law
  expand (a + a) * (a + b),
  -- Now we can simplify the result
  -- We can use the fact that a + a = 2 * a
  -- We can also use the fact that a * b = b * a
  -- Finally, we can use the fact that a * a = a^2
  simplify (2 * a) * (a + b),
  -- Now we can use the distributive law again
  expand (2 * a) * a,
  -- Now we can simplify the result
  -- We can use the fact that 2 * a = 2 * a
  simplify (2 * a) * a,
  -- Now we can use the fact that a * a = a^2
  -- Finally, we can use the fact that 2 * a * b = 2 * (a * b)
  simplify 2 * a^2 + 2 * (a * b),
  -- Now we can use the fact that 2 * (a * b) = 
end
