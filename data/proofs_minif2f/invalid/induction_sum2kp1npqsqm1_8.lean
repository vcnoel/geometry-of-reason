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
  { refl },
  { calc
      (∑ k in finset.range n.succ, 2 * k + 3)
        = (∑ k in finset.range n, 2 * k + 3) + (2 * n.succ + 3)
       ... = (∑ k in finset.range n, 2 * k + 3) + (2 * (n + 1) + 1)
       ... = (∑ k in finset.range n, 2 * k + 3) + (2 * (n + 1)) + 1
       ... = (∑ k in finset.range n, 2 * k + 3) + 2 * (n + 1) + 1
       ... = (∑ k in finset.range n, 2 * k + 3) + 2 * (n + 1) + 1
       ... = (∑ k in finset.range n, 2 * k + 3) + 2 * (n + 1) + 1
       ... = (∑ k in finset.range n, 2 * k + 3) +
end
