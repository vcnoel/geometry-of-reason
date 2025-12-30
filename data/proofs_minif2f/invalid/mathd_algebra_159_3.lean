import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  -- We are given that f(1) = 1, and we want to find b.
  -- We can use the definition of f to substitute into f(1) = 1.
  have h₂ : f(1) = 3 * (1)^4 - 7 * (1)^3 + 2 * (1)^2 - b * (1) + 1,
    by {simp only [h₀, pow_zero, pow_one]},
  -- Now we have an equation in terms of b.
  -- We can use this equation to solve for b.
  have h₃ : 3 - 7 + 2 - b + 1 = 1,
    by {simp only [h₂]},
  -- Now we have a linear equation in terms of b.
  -- We can solve this equation for b.
  have h₄ : -3 - b = 1,
    by {simp only [h₃]},
  -- Now we have an equation with just b on one side.
  -- We can solve this equation for b.
  have h₅ : b = -4,
    by {simp only [h₄]},
  -- Now we have the value of b.
 
end
