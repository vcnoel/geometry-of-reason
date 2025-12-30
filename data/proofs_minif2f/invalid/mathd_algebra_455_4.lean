import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_455
  (x : ℝ)
  (h₀ : 2 * (2 * (2 * (2 * x))) = 48) :
  x = 3 :=
begin

  -- We are given an equation that we can solve for x.
  -- We can start by using the property of equality of real numbers.
  have h₁ : 2 * (2 * (2 * (2 * x))) = 48,
  from h₀,

  -- Now we can use the property of equality of real numbers to rewrite the equation.
  have h₂ : 2 * (2 * (2 * x)) = 24,
  from h₁,

  -- Now we can use the property of equality of real numbers to rewrite the equation.
  have h₃ : 2 * (2 * x) = 12,
  from h₂,

  -- Now we can use the property of equality of real numbers to rewrite the equation.
  have h₄ : 2 * x = 6,
  from h₃,

  -- Now we can use the property of equality of real numbers to rewrite the equation.
  have h₅ : x = 3,
  from h₄,

  -- We can now use the property of equality of real numbers to conclude that x = 3.
  exact h₅

end
