import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  induction n with n IH,
  { simp },
  { calc
      ↑∑ k in (finset.range n.succ), 2 * k + 3
      = ↑∑ k in (finset.range n.succ), 2 * k + 3 + 2 * n.succ - 2 * n.succ
      = ↑(∑ k in (finset.range n), 2 * k + 3) + 2 * n.succ - 2 * n.succ
      = ↑(n + 1)^2 - 1 + 2 * n.succ - 2 * n.succ
      = ↑(n.succ + 1)^2 - 1 },

end
