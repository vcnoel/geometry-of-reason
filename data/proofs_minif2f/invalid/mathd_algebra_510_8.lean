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

  -- Square both sides of the equation h₀
  have h₀' : (x + y)^2 = 13^2,
  by {rw [h₀, pow2]},

  -- Expand the left-hand side of h₀'
  have h₀'' : x^2 + 2*x*y + y^2 = 169,
  by {rw [add_pow, pow2]},

  -- Subtract 2 * x * y from both sides of h₀''
  have h₀''' : x^2 + y^2 = 169 - 2 * x * y,
  by {rw [sub_add]},

  -- Substitute the value of 2 * x * y from h₁ into h₀'''
  have h₀'''' : x^2 + y^2 = 169 - 2 * 24,
  by {rw [h₁, neg_mul, neg_sub, sub_sub]},

  -- Simplify the right-hand side of h₀''''
  have h₀''''' : x^2 + y^2 = 121,
  by {rw [sub_sub, neg_one, mul_one]},

  -- Take the square root of both sides of h₀'''''
 
end
