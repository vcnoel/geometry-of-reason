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

  apply_fun (λ x, σ.1 x) 19,
  rw [h, h],
  simp,

end
