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
  { simp [finset.range_zero, finset.sum_empty, pow_zero] },
  { simp [finset.range_succ, finset.sum_insert, add_one, mul_two, add_assoc],
    rw [add_comm, mul_comm, pow_succ],
    exact induction_on n },

end
