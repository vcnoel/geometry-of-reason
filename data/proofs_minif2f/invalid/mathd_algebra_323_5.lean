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

  calc
    σ.2 (σ.1 (σ.2 19)) = σ.2 ((19^3) - 8) : by rw [h, pow_three]
   ... = (19^3 - 8) : by rw [sigma_two_of_equiv_eq_id]
   ... = 19^3 - 8 : rfl
   ... = 3 : by ring,

end
