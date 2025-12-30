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

  -- Step 1: Evaluate the function f at 1 using the given expression
  have h₁' : f 1 = 3 * 1^4 - 7 * 1^3 + 2 * 1^2 - b * 1 + 1,
  by simp [h₀],

  -- Step 2: Simplify the expression for f(1)
  have h₁'': f 1 = 3 - 7 + 2 - b + 1,
  by simp [h₁'],

  -- Step 3: Simplify the expression further
  have h₁''' : f 1 = -1 - b,
  by simp [h₁''],

  -- Step 4: Use the given fact that f(1) = 1 to set up an equation
  have h₁'''' : -1 - b = 1,
  by simp [h₁''', h₁],

  -- Step 5: Solve the equation for b
  have h₁''''' : b = -2,
  by linarith,

  -- Step 6: Conclude the proof by returning the value of b
  exact h₁'''''

end
