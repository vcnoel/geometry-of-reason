import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  -- Step 1: First, let's use the definition of f to find f(4)
  have h₁ : f 4 = 4^2 - 4 * real.sqrt 4 + 1,
  from h₀ 4,
  -- Step 2: Simplify the expression for f(4)
  have h₂ : f 4 = 16 - 8 + 1,
  by simp [h₁],
  have h₃ : f 4 = 9,
  by simp [h₂],
  -- Step 3: Now, let's find f(f(4)) by using the definition of f again
  have h₄ : f (f 4) = f 9,
  by simp [h₃],
  -- Step 4: Use the definition of f to find f(9)
  have h₅ : f 9 = 9^2 - 4 * real.sqrt 9 + 1,
  from h₀ 9,
  -- Step 5: Simplify the expression for f(9)
  have h₆ : f 9 = 81 - 12 + 1,
  by simp [h₅],
  have h�
end
