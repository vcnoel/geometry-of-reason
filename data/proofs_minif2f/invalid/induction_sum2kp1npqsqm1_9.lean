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
  { simp only [finset.range_zero, finset.sum_empty, zero_add, pow_zero, of_nat_zero, zpow_zero],
    refl },
  { simp only [finset.range_succ, sum_add_distrib, add_assoc, mul_two, mul_three, of_nat_add, add_of_nat, zpow_add, add_zpow],
    simp only [ih, of_nat_add, add_of_nat, zpow_add, add_zpow, of_nat_mul, mul_of_nat, zpow_mul, mul_zpow],
    ring_nf,
    congr,
    { rw [add_comm, add_assoc, add_assoc],
      congr,
      { rw [add_comm, add_assoc],
        congr,
        { rw [add_comm, add_assoc],
          congr,
          { rw [add_comm, add_assoc],
            congr,
            { rw [add_comm, add_assoc],
              congr,
              { rw [add_comm, add_assoc],
                congr,
                { rw [add_comm, add_assoc],
                  congr,
                  { rw [add_comm, add_assoc],
                    congr,
                    { rw [add_comm, add_assoc],
                      congr,
                      { rw [add_comm, add_assoc],
                        congr
end
