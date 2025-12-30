import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  -- rewrite the inequality
  rw [mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  -- expand the left-hand side
  expand,
  -- expand the right-hand side
  expand,
  -- rewrite the inequality
  rw [mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  -- expand the left-hand side
  expand,
  -- expand the right-hand side
  expand,
  -- rewrite the inequality
  rw [mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  -- expand the left-hand side
  expand,
  -- expand the right-hand side
  expand,
  -- rewrite the inequality
  rw [mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  -- expand the left-hand side
  expand
end
