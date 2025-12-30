import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  -- 1. Base case
  induction n with n ih,
  { -- base case
    simp,
  },
  -- 2. Inductive step
  { -- inductive step
    calc
    (n + 1)^2 - 1
      = n^2 + 2*n + 1 - 1
      -- 2a. Expand the left-hand side
      := by ring_nf,
   ... = (n^2 + 2*n) + 1 - 1
      -- 2b. Simplify the right-hand side
      := by ring_nf,
   ... = n^2 + 2*n
      -- 2c. Cancel out the -1 + 1
      := by ring_nf,
   ... = n^2 + 2*(n + 1) - 2
      -- 2d. Factor out n + 1
      := by ring_nf,
   ... = (n + 1)^2 - 2
      -- 2e. Distribute the 2
      := by ring_nf,
   ... = (n + 1)^2 - 1 + 1
      -- 2f. Add 
end
