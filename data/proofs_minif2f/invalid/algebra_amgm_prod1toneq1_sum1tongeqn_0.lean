import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_prod1toneq1_sum1tongeqn
  (a : ℕ → nnreal)
  (n : ℕ)
  (h₀ : finset.prod (finset.range(n)) a = 1) :
  finset.sum (finset.range(n)) a ≥ n :=
begin

  apply ge_iff_le.mp,
  apply le_of_sub_nonpos,
  apply sub_nonpos_of_add_le_add_right,
  apply add_le_add_left,
  apply finset.sum_le_sum,
  apply finset.prod_le_one_of_nonzero_of_forall_le_one,
  intros i hi,
  apply a_le_one_of_nonzero_of_forall_le_one,
  apply a_mem_finset_range,
  assumption,
  exact h₀,

end
