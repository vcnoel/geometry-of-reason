import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2010_p22
  (x : ℝ) :
  49 ≤ ∑ k in finset.Icc 1 119, abs (↑k * x - 1) :=
begin

  refine le_trans _ (le_of_sum_le _),
  { apply finset.sum_le_sum (λ k hk, _),
    { refine abs_nonneg _ },
    { rw abs_sub,
      refine le_trans (mul_le_mul _ _ (le_of_lt_one _) _) (le_of_lt_one _),
      { refine le_of_lt (lt_of_le_of_lt _ (lt_one_iff_nonpos_one.mpr (lt_one_iff_nonpos_one.mp hk))),
        apply mul_le_mul_left },
      { refine le_of_lt (lt_one_iff_nonpos_one.mpr (lt_one_iff_nonpos_one.mp hk)) } } }

end
