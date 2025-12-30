import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  -- Expand the expression
  rw add_comm ((x * y) - 1)^2 ((x + y)^2),
  rw add_comm ((x * y) - 1)^2 ((x + y)^2),
  rw add_comm (x + y)^2 ((x * y) - 1)^2,
  rw add_comm (x + y)^2 ((x * y) - 1)^2,
  rw add_comm (x + y)^2 ((x * y) - 1)^2,
  -- Rewrite the expression
  rw pow_two ((x * y) - 1)^2,
  rw pow_two (x + y)^2,
  -- Apply the properties of squares
  rw pow_two ((x * y) - 1),
  rw pow_two (x + y),
  -- Expand the squares
  rw pow_two ((x * y) - 1),
  rw pow_two (x + y),
  -- Expand the squares
  rw pow_two ((x * y) - 1),
  rw pow_two (x + y),
  -- Expand the squares
  rw pow_two ((x * y) - 1),
  rw pow_two (x + y
end
