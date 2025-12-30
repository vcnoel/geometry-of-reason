import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_263
  (y : ℝ)
  (h₀ : 0 ≤ 19 + 3 * y)
  (h₁ : real.sqrt (19 + 3 * y) = 7) :
  y = 10 :=
begin
  revert y h₀ h₁,
  intros x hx,
  rw real.sqrt_eq_iff_sq_eq hx,
  swap,
  norm_num,
  intro h,
  nlinarith,
end