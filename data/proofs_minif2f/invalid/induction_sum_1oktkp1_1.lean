import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem induction_sum_1oktkp1
  (n : ℕ) :
  ∑ k in (finset.range n), (1 : ℝ) / ((k + 1) * (k + 2)) = n / (n + 1) :=
begin

  cases n,
  { simp [finset.range_zero, sum_empty, one_div_one, one_div_one_mul_one_div_two, one_div_two] },
  { simp [finset.range_succ, sum_insert],
    have h := induction_sum_1oktkp1 (n - 1),
    rw [add_sub_cancel_left, add_sub_cancel_left, add_one, one_div_mul_cancel, one_div_add_cancel, one_div_mul_cancel, one_div_add_cancel, one_div_mul_cancel, one_div_add_cancel, one_div_mul_cancel, one_div_add_cancel],
    exact h },

end
