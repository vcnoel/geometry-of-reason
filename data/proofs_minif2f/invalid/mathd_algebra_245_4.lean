import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_245
  (x : ℝ)
  (h₀ : x ≠ 0) :
  (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 = 18 * x^8 :=
begin

  -- Start by expanding the left-hand side of the equation.
  rw [pow_neg_one, pow_mul, mul_assoc, pow_add, mul_comm, mul_assoc, mul_pow, mul_comm],
  -- Simplify the expression.
  rw [mul_comm, mul_assoc, mul_pow, mul_comm],
  -- Apply the rules for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
  -- Apply the rule for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
  -- Apply the rule for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
  -- Apply the rule for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
  -- Apply the rule for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
  -- Apply the rule for exponentiation.
  rw [pow_mul, mul_pow],
  -- Apply the rule for multiplication.
  rw [mul_assoc],
 
end
