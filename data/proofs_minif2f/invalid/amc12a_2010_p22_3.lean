import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  apply ge_of_le,
  { rw abs_of_nonneg,
    apply finset.sum_le_sum,
    intros k hk,
    apply mul_nonneg,
    apply abs_le,
    { apply sub_nonneg,
      apply mul_nonneg,
      apply nat.lt_le_of_pos,
      exact 1 < k.succ },
      apply le_of_eq,
      rw sub_eq_add_neg,
      apply add_le_add,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
      apply le_of_eq,
      rw mul_one,
      apply le_of_eq,
      rw add_comm,
      apply sub_le_sub,
     
end
