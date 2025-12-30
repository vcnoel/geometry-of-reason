import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2complexrootspoly_xsqp49eqxp7itxpn7i
  (x : ℂ) :
  x^2 + 49 = (x + (7 * complex.I)) * (x + (-7 * complex.I)) :=
begin

  have h1 := complex.I_ne_zero,
  have h2 := algebra_map ℂ ℂ (7 * complex.I),
  have h3 := algebra_map ℂ ℂ (-7 * complex.I),
  have h4 := algebra_map ℂ ℂ x,
  have h5 := algebra_map ℂ ℂ (x + (7 * complex.I)),
  have h6 := algebra_map ℂ ℂ (x + (-7 * complex.I)),
  have h7 := algebra_map ℂ ℂ (x + (7 * complex.I)) * (x + (-7 * complex.I)),
  have h8 := algebra_map ℂ ℂ (x + (7 * complex.I)) * (x + (-7 * complex.I)) = (x + (7 * complex.I)) * (x + (-7 * complex.I)),
  have h9 := algebra_map ℂ ℂ ((x + (7 * complex.I)) * (x + (-7 * complex.I))),
  have h10 := algebra_map ℂ ℂ ((x + (7 * complex.I)) * (x + (-7 * complex.I))) = (x + (7 * complex.I)) * (x + (-7 * complex.I
end
