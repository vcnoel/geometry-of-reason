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
  { rw [finset.range_succ, finset.sum_insert],
    simp only [finset.sum_const, finset.sum_empty, nat.cast_zero, nat.cast_one],
    rw [ih, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm, add_assoc, add_comm,
end
