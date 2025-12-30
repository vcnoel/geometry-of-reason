import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  induction n with n ih,
  { simp only [finset.range_zero, finset.sum_empty, div_zero, mul_one, one_div] },
  { have h := finset.sum_insert _ _,
    rw [h, ih, mul_add, mul_comm, mul_assoc, mul_div_cancel' _ (ne_of_gt (lt_add_one n))],
    simp only [mul_one, div_mul_cancel _ (ne_of_gt (lt_add_one n)), add_comm] }

end
