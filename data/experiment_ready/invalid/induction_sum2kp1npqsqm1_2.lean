import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum2kp1npqsqm1
  (n : ℕ) :
  ↑∑ k in (finset.range n), 2 * k + 3 = ↑(n + 1)^2 - (1:ℤ) :=
begin

  induction n generalizing n with n IH,
  { refl },
  { simp [add_assoc, add_comm, nat.succ_pred_eq, IH, add_assoc, add_comm] },

end
