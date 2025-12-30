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

  -- Rewrite the equation x + 2 / x = y + 2 / y as (x^2 + 2) / x = (y^2 + 2) / y.
  have h₄ : (x^2 + 2) / x = (y^2 + 2) / y,
  by {rw h₃, exact refl},
  
  -- Now multiply both sides by x * y.
  have h₅ : (x^2 + 2) * y = (y^2 + 2) * x,
  by {rw h₄, exact mul_comm},
  
  -- Now expand both sides of the equation.
  have h₆ : x^2 * y + 2 * y = y^2 * x + 2 * x,
  by {rw h₅, exact expand},
  
  -- Now move all terms to one side.
  have h₇ : x^2 * y - y^2 * x = 2 * x - 2 * y,
  by {rw h₆, exact sub_eq_add_neg},
  
  -- Now factor the left side of the equation.
  have h₈ : x * (x
end
