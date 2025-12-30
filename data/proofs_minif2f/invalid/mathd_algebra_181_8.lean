import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_181
  (n : ℝ)
  (h₀ : n ≠ 3)
  (h₁ : (n + 5) / (n - 3) = 2) : n = 11 :=
begin

  have h₂ := (div_eq_iff (ne_of_gt (sub_pos_of_lt (abs_pos.mpr (lt_of_lt_of_le (lt_of_le_of_lt (zero_lt_one.trans zero_lt_five) h₀) (sub_le_sub_left five_three (sub_nonneg_of_le five_three))))) h₀)).mp h₁,
  rw sub_eq_zero at h₂,
  exact (eq_zero_of_add_eq_zero_left five h₂),

end
