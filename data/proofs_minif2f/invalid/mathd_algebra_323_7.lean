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

  have h2 : σ.1 (σ.2 19) = 19^3 - 8,
  by rw [h],
  have h3 : σ.1 (σ.2 19) = 1853,
  by {simp [h2], },
  have h4 : σ.2 (σ.1 (σ.2 19)) = σ.2 (1853),
  by rw [h3],
  have h5 : σ.2 (σ.1 (σ.2 19)) = 1853^3 - 8,
  by {rw [h] at h4, },
  have h6 : σ.2 (σ.1 (σ.2 19)) = 3,
  by {rw [h5], },
  exact h6,

end
