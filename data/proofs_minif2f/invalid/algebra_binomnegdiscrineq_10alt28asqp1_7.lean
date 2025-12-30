import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_binomnegdiscrineq_10alt28asqp1
  (a : ℝ) :
  10 * a ≤ 28 * a^2 + 1 :=
begin

  -- First, we want to isolate the term involving a^2.
  have h1 : 28 * a^2 + 1 ≥ 28 * a^2,
    by {
      -- This is true since 1 ≥ 0.
    },
  -- Now, we can rewrite the original inequality as:
  have h2 : 10 * a - 1 ≥ 28 * a^2,
    by {
      -- We can subtract 1 from both sides of the inequality h1.
      rw h1,
      -- Now, we have 10 * a - 1 ≥ 28 * a^2.
    },
  -- Next, we want to show that 28 * a^2 ≤ 0.
  have h3 : 28 * a^2 ≤ 0,
    by {
      -- We can multiply both sides of the inequality by a^2.
      -- If a^2 ≤ 0, then a^2 ≤ 0.
      -- Since a^2 ≥ 0, we can multiply both sides of the inequality by a^2.
      -- Now, we have 0 ≤ 0.
    },
  -- Now, we can combine the inequalities h2 and h3.
 
end
