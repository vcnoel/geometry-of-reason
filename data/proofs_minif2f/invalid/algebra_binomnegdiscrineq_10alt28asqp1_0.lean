import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  have h1 : ∀ a : ℝ, 10 * a ≤ 28 * a^2 + 1,
    from by { intros a, exact (28 * a^2 + 1) ≥ 10 * a },
  exact h1 a,

end
