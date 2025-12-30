import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  -- Start with the assumption that a ≥ 0
  assume a_nonneg : 0 ≤ a,
  -- Since a ≥ 0, we know that a^2 ≥ 0
  have a2_nonneg : 0 ≤ a^2,
    by rw [pow_two_nonneg, ge_iff_le],
  -- Multiply both sides of the inequality by a^2
  have a2_mul_10a_le : a^2 * 10 * a ≤ a^2 * (28 * a^2 + 1),
    by rw [mul_assoc, mul_assoc, le_mul_cancel_left a2_nonneg],
  -- Distribute a^2 on the right-hand side of the inequality
  have a2_mul_10a_le' : a^2 * 10 * a ≤ 28 * a^4 + a^2,
    by rw [mul_assoc, mul_assoc, mul_assoc, mul_assoc, mul_assoc],
  -- Add 28 * a^4 to both sides of the inequality
  have a2_mul_10a_le'' : 28 * a^4 + a^2 * 10 * a ≤ 28 * a^4 + 28 * a^4 +
end
