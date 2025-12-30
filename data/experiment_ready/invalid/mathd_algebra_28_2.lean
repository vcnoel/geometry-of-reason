import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_28
  (c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 2 * x^2 + 5 * x + c)
  (h₁ : ∃ x, f x ≤ 0) :
  c ≤ 25/8 :=
begin

  -- Given that the function f(x) = 2x^2 + 5x + c has a real root,
  -- we can find the minimum value of the function using calculus.
  -- The derivative of the function is f'(x) = 4x + 5.
  -- We can find the critical points by setting the derivative equal to zero.
  -- 4x + 5 = 0 --> x = -5/4.
  -- We can use the second derivative test to determine the nature of the critical point.
  -- The second derivative is f''(x) = 4.
  -- Since the second derivative is positive, the critical point is a minimum.
  -- Therefore, the minimum value of the function is f(-5/4) = 2(-5/4)^2 + 5(-5/4) + c.
  -- We can simplify the expression to find the minimum value.
  -- f(-5/4) = 25/8 - 25/4 + c = -25/8 + c.
  -- Since the function has a real root, we know that there exists a point x such that f(x) = 0.
  -- We can substitute this point
end
