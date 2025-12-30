import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_275
  (x : ℝ)
  (h : ((11:ℝ)^(1 / 4))^(3 * x - 3) = 1 / 5) :
  ((11:ℝ)^(1 / 4))^(6 * x + 2) = 121 / 25 :=
begin
  revert x h,
  norm_num,
end