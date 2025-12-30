import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p5
  (x : ℝ)
  (h₀ : x^3 - (x + 1) * (x - 1) * x = 5) :
  x^3 = 125 :=
begin

  -- We want to prove x^3 = 125.
  -- The equation x^3 - (x + 1) * (x - 1) * x = 5 is given.

  -- First, we expand the product (x + 1) * (x - 1) * x.
  have h₁ : (x + 1) * (x - 1) * x = x^3 - x^2 + x,
  by {
    -- By definition of multiplication.
    ring,
  },

  -- Now, we rewrite the equation x^3 - (x + 1) * (x - 1) * x = 5
  -- using the result h₁.
  have h₂ : x^3 - (x^3 - x^2 + x) = 5,
  by {
    -- By definition of equality.
    rw h₁,
  },

  -- Now, we simplify the left-hand side of the equation.
  have h₃ : x^2 - x = 5,
  by {
    -- By definition of equality.
    ring,
  },

  -- Now, we move all terms to one side of the equation.
  have h₄ :
end
