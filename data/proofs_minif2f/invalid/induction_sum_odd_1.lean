import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  induction n with n ih,
  { simp },
  { calc ∑ k in finset.range n.succ, 2 * k + 1
          = ∑ k in finset.range n, 2 * k + 1 + 2 * n + 1
      : by { rw [finset.sum_insert n.succ],
            congr,
            simp }
   ... = n^2 + 2 * n + 1
      : by { rw ih,
            congr,
            simp }
   ... = (n.succ)^2
      : by { simp } },

end
