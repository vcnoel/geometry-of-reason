import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_odd
  (n : ℕ) :
  ∑ k in (finset.range n), 2 * k + 1 = n^2 :=
begin

  cases n,
  { simp },
  { induction n with n IH,
    { simp },
    { calc ∑ k in (finset.range (n+1)), 2 * k + 1
          = ∑ k in (finset.range n), 2 * k + 1 + (2 * n + 1)
          = n^2 + (2 * n + 1) : IH
     ... = (n+1)^2 : by ring } },

end
