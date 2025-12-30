import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2013_p8
  (x y : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : y ≠ 0)
  (h₂ : x ≠ y)
  (h₃ : x + 2 / x = y + 2 / y) :
  x * y = 2 :=
begin

  -- Rearrange the equation
  have h₄ : (x - y) * (y + 2 / y) = 0,
  from calc
    (x - y) * (y + 2 / y) = (x - y) * y + (x - y) * (2 / y) : by ring
   ... = y * (x - y) + 2 * (x - y) : by ring
   ... = (x - y) * (y + 2) : by ring
   ... = 0 : by {rw [h₃], ring},
  -- Deduce that y + 2/y = 0
  have h₅ : y + 2 / y = 0,
  from h₄,
  -- Multiply both sides by y
  have h₆ : y * (y + 2 / y) = 0 * y,
  from h₅,
  -- Simplify
  have h₇ : y^2 + 2 = 0,
  from h₆,
  -- Get a contradiction
  have h₈ : False,
  from h₇,
  -- This means the original
end
