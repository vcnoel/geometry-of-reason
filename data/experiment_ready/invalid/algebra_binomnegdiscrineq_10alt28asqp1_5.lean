import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  -- To prove the inequality 10a ≤ 28a^2 + 1, we can rearrange the terms to obtain 28a^2 - 10a + 1 ≥ 0.
  -- This is a quadratic inequality of the form ax^2 + bx + c ≥ 0, where a = 28, b = -10, and c = 1.
  -- We can use the discriminant to determine the conditions under which the quadratic expression is non-negative.
  -- The discriminant is given by b^2 - 4ac, and we need to show that it is negative.
  have h1 : ( (-10) ^ 2 - 4 * 28 * 1 ) < 0,
  calc
    (-10) ^ 2 - 4 * 28 * 1
    = 100 - 112
    = -12
    < 0,
  -- Since the discriminant is negative, the quadratic expression is always non-negative.
  -- Therefore, we can conclude that 28a^2 - 10a + 1 ≥ 0.
  show 28 * a^2 - 10 * a + 1 ≥ 0,
  -- Rear
end
