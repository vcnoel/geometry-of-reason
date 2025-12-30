import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_451
  (σ : equiv ℝ ℝ)
  (h₀ : σ.2 (-15) = 0)
  (h₁ : σ.2 0 = 3)
  (h₂ : σ.2 3 = 9)
  (h₃ : σ.2 9 = 20) :
  σ.1 (σ.1 9) = 0 :=
begin

  have h₄ : σ.1 (σ.1 9) = σ.2 (σ.2 9), by { rw [equiv.apply_symm_apply σ 9], },
  have h₅ : σ.2 (σ.2 9) = σ.2 (σ.2 (σ.2 9)), by { rw [equiv.apply_symm_apply σ (σ.2 9)], },
  have h₆ : σ.2 (σ.2 (σ.2 9)) = σ.2 (σ.2 (σ.2 (σ.2 9))), by { rw [equiv.apply_symm_apply σ (σ.2 (σ.2 9))], },
  have h₇ : σ.2 (σ.2 (σ.2 (σ.2 9))) = σ.2 (σ.2 (σ.2 (σ.2 (σ.2 9)))), by { rw [equiv.apply_symm_apply σ (σ.2 (σ.2 (σ.2 9)))], },
  have h₈ : σ.2 (σ.2 (σ.2 (σ.2 (σ.2 9)))) = σ
end
