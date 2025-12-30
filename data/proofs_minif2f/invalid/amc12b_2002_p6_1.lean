import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  -- We are given the equation (x^2 + a * x + b) = (x - a) * (x - b).
  -- We will expand the right-hand side and then compare coefficients.
  -- The coefficient of x^2 is 1 on both sides, so we can ignore it.
  -- The constant term on the right-hand side is -a * b.
  -- Equating the coefficients of x on both sides gives us a = -a - b + 1.
  -- This is equivalent to 2 * a + b = 1.
  -- We can use the given fact that a ≠ 0 to conclude that b = -2 * a + 1.
  -- We can use the given fact that b ≠ 0 to conclude that a ≠ 1.
  -- Now we can substitute b = -2 * a + 1 into the equation x^2 + a * x + b = (x - a) * (x - b).
  -- This gives us x^2 + a * x + (-2 * a + 1) = (x - a) * (x - (-2 * a + 1)).
  -- Expanding the right-hand side gives us x
end
