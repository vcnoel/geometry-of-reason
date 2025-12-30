import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  -- First, we rewrite the left-hand side of the inequality
  rw [mul_assoc, mul_assoc, mul_assoc],
  -- Then, we factor the expression
  factor_out (36 * z - 9 * a),
  -- Now, we can use the triangle inequality to obtain the desired result
  exact (36 * z - 9 * a)^2 ≤ (36 * z)^2 + (9 * a)^2,

end
