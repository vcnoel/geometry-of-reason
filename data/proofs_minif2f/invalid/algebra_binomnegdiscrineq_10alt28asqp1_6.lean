import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  have h1 := algebra_binomnegdiscrineq_10alt28as,
  have h2 := h1 a,
  exact h2,

end
