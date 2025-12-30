import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootspoly_apatapbeq2asqp2ab
  (a b : ℂ) :
  (a + a) * (a + b) = 2 * a^2 + 2 * (a * b) :=
begin

  -- expand the left hand side of the equation
  rw left_distrib,
  -- expand the left hand side of the equation
  rw left_distrib,
  -- apply the distributive property
  rw mul_comm,
  -- apply the distributive property
  rw mul_comm,
  -- apply the distributive property
  rw mul_comm,
  -- simplify the right hand side of the equation
  ring,

end
