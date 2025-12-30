import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2021_p7
  (x y : ℝ) :
  1 ≤ ((x * y) - 1)^2 + (x + y)^2 :=
begin

  -- First, we expand the left-hand side.
  have LHS_expanded := ((x * y) - 1)^2 + (x + y)^2,
  -- Next, we expand the right-hand side.
  have RHS_expanded := 1,
  -- Now, we add 1 to both sides of the inequality.
  have added_1 := LHS_expanded + 1,
  have added_1_rhs := RHS_expanded + 1,
  -- Next, we expand the left-hand side.
  have expanded_added_1 := ((x * y) - 1)^2 + (x + y)^2 + 1,
  -- Now, we use the triangle inequality.
  have triangle_inequality := expanded_added_1 ≥ (x * y - 1)^2 + (x + y)^2 + 1,
  -- Next, we expand the right-hand side.
  have RHS_expanded_triangle := (x * y - 1)^2 + (x + y)^2 + 1,
  -- Now, we expand the right-hand side.
  have RHS_expanded_triangle_rhs := (x * y - 1)^2 + (x + y)^2 + 1
end
