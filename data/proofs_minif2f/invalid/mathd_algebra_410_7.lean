import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  -- Use the given equation to substitute y with x^2 - 6*x + 13.
  have h₁ : y = x^2 - 6 * x + 13,
  from h₀,

  -- Expand the inequality 4 ≤ y.
  have h₂ : 4 ≤ x^2 - 6 * x + 13,
  from le_substitutes h₁,

  -- Complete the square to rewrite x^2 - 6*x + 13 as (x - 3)^2 + 4.
  have h₃ : x^2 - 6 * x + 13 = (x - 3)^2 + 4,
  from expand_squares (x^2 - 6 * x + 13),

  -- Substitute the completed square back into the inequality.
  have h₄ : 4 ≤ (x - 3)^2 + 4,
  from le_substitutes h₃,

  -- Subtract 4 from both sides of the inequality.
  have h₅ : 0 ≤ (x - 3)^2,
  from le_subtract 4,

  -- Since (x - 3)^2 ≥ 0 for all x, we can conclude
end
