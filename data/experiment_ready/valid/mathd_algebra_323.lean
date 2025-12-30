import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_323
  (σ : equiv ℝ ℝ)
  (h : ∀ x, σ.1 x = x^3 - 8) :
  σ.2 (σ.1 (σ.2 19)) = 3 :=
begin
  revert h,
  simp,
  intro h,
  apply σ.injective,
  simp [h, σ.apply_symm_apply],
  norm_num,
end