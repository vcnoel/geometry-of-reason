import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  -- First, we use the definition of f on f(x + 3) to find an expression for f(x + 3)
  have h₂ : f (x + 3) = 3 * x^2 + 7 * x + 4 := h₀ x,
  -- Then, we substitute this expression into the equation for f(x) to get an expression for f(x) in terms of x and constants
  have h₃ : f x = a * x^2 + b * x + c := h₁ x,
  -- Now, we substitute the expression for f(x) into the equation for f(x + 3) to get an expression for f(x + 3) in terms of x and constants
  have h₄ : f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c := by {rw [h₃, h₂]},
  -- Next, we expand the expression for f(x + 3) to get a new expression for f(x + 3) in terms of x and constants
  have h₅ : f (x + 3) = a * (x^2 + 6
end
