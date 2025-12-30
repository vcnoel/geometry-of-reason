import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  simp,
  congr,
  -- apply Finset.sum_congr rfl,
  -- intros k hk,
  -- have h1 : ((4 : ℝ) * k + 4) / (4 * k) = k + 1,
  -- by {rw [add_div, div_mul_cancel _ (ne_of_gt (pos_of_int_pos k.pos))], simp},
  -- rw h1,
  -- simp,
  -- ring,
  -- apply Finset.sum_congr rfl,
  -- intros k hk,
  -- have h1 : ((4 : ℝ) * k + 4) / (4 * k) = k + 1,
  -- by {rw [add_div, div_mul_cancel _ (ne_of_gt (pos_of_int_pos k.pos))], simp},
  -- rw h1,
  -- simp,
  -- ring,
  -- apply Finset.sum_congr rfl,
  -- intros k hk,
  -- have h1 : ((4 : ℝ) * k + 4) / (4 * k) = k + 1,
  -- by {rw [add_div, div_mul_cancel _ (ne_of_gt (pos_of_int_pos k.pos))], simp},
  -- rw
end
