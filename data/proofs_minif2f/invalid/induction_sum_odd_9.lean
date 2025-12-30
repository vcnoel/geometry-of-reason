import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  induction n with n IH,
  { simp },
  { rw [finset.sum_range_succ, IH, n.succ_mul, n.succ_mul, succ_mul_self] },

end
