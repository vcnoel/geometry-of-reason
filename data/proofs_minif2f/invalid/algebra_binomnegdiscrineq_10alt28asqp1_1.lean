import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  have h1 := algebra.binom_neg_discr (10) (28) (1),
  have h2 := algebra.binom_neg_discr_pos (10) (28) (1),
  have h3 := algebra.binom_neg_discr_pos_ineq (10) (28) (1),
  exact h3,

end
