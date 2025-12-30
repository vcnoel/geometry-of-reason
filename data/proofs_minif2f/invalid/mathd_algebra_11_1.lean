import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_11
  (a b : ℝ)
  (h₀ : a ≠ b)
  (h₁ : a ≠ 2 * b)
  (h₂ : (4 * a + 3 * b) / (a - 2 * b) = 5) :
  (a + 11 * b) / (a - b) = 2 :=
begin

  -- Multiply both sides by (a - b) to get rid of the denominator
  rw ← mul_div_cancel_left ((4 * a + 3 * b) / (a - 2 * b)) (a - b),
  -- Expand the left-hand side
  rw div_mul_cancel ((4 * a + 3 * b) * (a - b)) (a - b),
  -- Expand the right-hand side
  rw div_mul_cancel (a * (a - b)) (a - b),
  -- Expand the right-hand side
  rw div_mul_cancel (11 * b * (a - b)) (a - b),
  -- Simplify the left-hand side
  rw mul_add ((4 * a) * (a - b)),
  -- Simplify the left-hand side
  rw mul_add (3 * b * (a - b)),
  -- Simplify the left-hand side
  rw mul_add a * (a - b),
  -- Simplify the left-hand side
  rw mul_add (11 * b * (a - b)),
  -- Expand the left-hand side
  rw mul_sub (4 * a * a),
  -- Expand the left-hand side
  rw
end
