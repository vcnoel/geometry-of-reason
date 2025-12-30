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

  -- We are given the following information:
  --   f(x + 3) = 3x^2 + 7x + 4
  --   f(x) = ax^2 + bx + c

  -- We want to prove that a + b + c = 2.

  -- To do this, we will use the definition of f(x) and the information we are given.
  -- We will start by using the definition of f(x) and substituting x + 3 for x.
  have h₂ : f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c,
    from h₁ (x + 3),

  -- Now we can equate the two expressions for f(x + 3) and solve for a, b, and c.
  have h₃ : a * (x + 3)^2 + b * (x + 3) + c = 3x^2 + 7x + 4,
    from h₀ _,

  -- We can expand the left-hand side of the equation to get a polynomial in x.
  have h₄ : a * (x^2 +
end
