import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2011_p18
  (x y : ℝ)
  (h₀ : abs (x + y) + abs (x - y) = 2) :
  x^2 - 6 * x + y^2 ≤ 9 :=
begin

  -- Expand the left-hand side
  have h₁ := le_of_add_le_add_left (le_of_abs_le_abs h₀) (y^2),
  -- Expand the right-hand side
  have h₂ := le_of_add_le_add_left (le_of_abs_le_abs h₀) (y^2 + 9),
  -- Expand the left-hand side
  have h₃ := le_of_add_le_add_left (le_of_abs_le_abs h₀) (y^2 + 6 * y + x^2),
  -- Apply the AM-GM inequality
  have h₄ := amgm (x^2 + y^2),
  -- Apply the AM-GM inequality
  have h₅ := amgm (x^2 + 3),
  -- Apply the AM-GM inequality
  have h₆ := amgm (y^2 + 3),
  -- Apply the AM-GM inequality
  have h₇ := amgm (x^2 + y^2 + 6 * x + 6 * y + 9),
  -- Apply the AM-GM inequality
  have h₈ := amgm (x^2 + y^2 + 6 * x
end
