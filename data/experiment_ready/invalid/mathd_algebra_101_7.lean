import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_101
  (x : ℝ)
  (h₀ : x^2 - 5 * x - 4 ≤ 10) :
  x ≥ -2 ∧ x ≤ 7 :=
begin

  -- To prove the conjunction x ≥ -2 ∧ x ≤ 7, we can use the tactic `split` to break the goal into two subgoals.
  split,

  -- For the first subgoal x ≥ -2, we can rearrange the inequality x^2 - 5 * x - 4 ≤ 10 to x^2 - 5 * x - 14 ≤ 0.
  -- This is a quadratic inequality, which can be factored as (x - 7) * (x + 2) ≤ 0.
  -- We can then use the tactic `solve_left` to solve the inequality for x.
  solve_left,
  -- The solution is x ≤ 7.

  -- For the second subgoal x ≤ 7, we can rearrange the inequality x^2 - 5 * x - 4 ≤ 10 to x^2 - 5 * x + 6 ≥ 0.
  -- This is a quadratic inequality, which can be factored as (x - 2) * (x - 3) ≥ 0.
  -- We can then use the tactic `solve_left` to solve the inequality for x.
  solve_left,
  -- The solution is x
end
