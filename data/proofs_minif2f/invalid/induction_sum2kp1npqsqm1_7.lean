import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  induction n with n ih,
  { simp },
  { simp only [add_assoc, add_left_inj, finset.sum_range_succ, add_comm, zpow_add, zpow_one, zpow_neg_one],
    ring_nf,
    rw ← ih,
    ring_nf }

end
