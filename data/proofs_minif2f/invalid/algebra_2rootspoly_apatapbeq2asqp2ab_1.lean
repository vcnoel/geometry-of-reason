import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootspoly_apatapbeq2asqp2ab
  (a b : ℂ) :
  (a + a) * (a + b) = 2 * a^2 + 2 * (a * b) :=
begin

  -- Expand the left-hand side
  rw algebra.expand,
  -- Simplify the result
  simplify,
  -- Now the left-hand side is the same as the right-hand side
  rw rfl,
  -- Hence the two sides are equal
  exact rfl

end
