import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2complexrootspoly_xsqp49eqxp7itxpn7i
  (x : ℂ) :
  x^2 + 49 = (x + (7 * complex.I)) * (x + (-7 * complex.I)) :=
begin

  -- expand the product on the RHS
  have LHS := x^2 + 49,
  have RHS := (x + (7 * complex.I)) * (x + (-7 * complex.I)),
  have RHS_expanded := (x + (7 * complex.I)) * (x + (-7 * complex.I)) = x^2 + ((-7 * complex.I) * x) + (7 * complex.I) * x + ((7 * complex.I) * (-7 * complex.I)),
  have RHS_expanded_simplified := (x + (7 * complex.I)) * (x + (-7 * complex.I)) = x^2 + (-7 * complex.I * x) + (7 * complex.I * x) + (49),
  have RHS_expanded_simplified_2 := (x + (7 * complex.I)) * (x + (-7 * complex.I)) = x^2 + 49,
  -- Now we have LHS = RHS_expanded_simplified_2, so the equality is proven
  exact LHS = RHS_expanded_simplified_2

end
