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
  { simp [finset.range_zero, finset.sum_empty, pow_zero] },
  { simp [finset.range_succ, finset.sum_add_distrib],
    apply add_left_cancel,
    rw ih,
    rw pow_succ },

end
