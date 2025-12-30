import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_510
  (x y : ℝ)
  (h₀ : x + y = 13)
  (h₁ : x * y = 24) :
  real.sqrt (x^2 + y^2) = 11 :=
begin

  -- Rewrite the goal in terms of x and y
  rw [h₀, h₁, real.sqrt_add, real.sqrt_mul],
  -- Apply the AM-GM inequality
  apply real.sqrt_ge_of_nonneg (real.sqrt (x^2 + y^2)),
  -- Use the fact that AM-GM is an equality for non-negative numbers
  apply real.sqrt_eq_of_square_eq,
  -- Square both sides to eliminate the square root
  apply real.sqrt_eq_of_square_eq,
  -- Simplify the right-hand side
  rw [real.sqrt_pow_two, real.sqrt_pow_two],
  -- Factor the numerator
  rw [real.mul_add, real.mul_add, real.add_mul, real.add_mul],
  -- Simplify the left-hand side
  rw [real.pow_two_add, real.pow_two_add],
  -- Use the fact that x^2 + y^2 = (x+y)^2 - 2xy
  rw [h₀, h₁],
  -- Simplify the left-hand side
  rw [real.pow_sub, real.pow_mul],
  -- Simplify the numerator
  rw [real.pow_sub, real.pow_mul],
  -- Factor the denominator
  rw [real.pow_add
end
