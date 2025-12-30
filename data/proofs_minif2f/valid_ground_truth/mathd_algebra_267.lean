import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_267
  (x : ℝ)
  (h₀ : x ≠ 1)
  (h₁ : x ≠ -2)
  (h₂ : (x + 1) / (x - 1) = (x - 2) / (x + 2)) :
  x = 0 :=
begin
  revert x h₀ h₁ h₂,
  norm_num,
  intros a ha,
  intros ha,
  intro h,
  rw ← sub_eq_zero at *,
  simp,
  field_simp at *,
  linarith,
end