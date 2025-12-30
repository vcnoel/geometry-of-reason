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

  apply (congr_arg σ.2 (h 19)),
  apply (congr_arg (λ x, x^3 - 8) (h (σ.2 19))),
  calc σ.2 19 = (19^3 - 8) : by simp [h 19]
     ... = 3 : by ring

end
