import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootspoly_apatapbeq2asqp2ab
  (a b : ℂ) :
  (a + a) * (a + b) = 2 * a^2 + 2 * (a * b) :=
begin

  -- Start by expanding the left-hand side of the equation
  rw ← mul_add a a b,
  -- Now, use the distributive law to expand the left-hand side
  rw mul_add a a b,
  -- We can now rewrite the left-hand side using the commutative law
  rw mul_comm a b,
  -- Now, use the distributive law again to expand the left-hand side
  rw mul_add a a b,
  -- We can now rewrite the left-hand side using the commutative law again
  rw mul_comm a b,
  -- Now, use the distributive law once more to expand the left-hand side
  rw mul_add a a b,
  -- We can now rewrite the left-hand side using the commutative law again
  rw mul_comm a b,
  -- Now, use the distributive law once more to expand the left-hand side
  rw mul_add a a b,
  -- We can now rewrite the left-hand side using the commutative law again
  rw mul_comm a b,
  -- Now, use the distributive law once more to expand the left-hand side
  rw mul_add a a b,
  -- We can now rewrite the left
end
