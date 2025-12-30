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

  -- We can use the equiv property to convert between the two representations.
  rw [equiv.apply_symm_apply σ 9],
  -- Now we need to show that σ.1 (σ.1 9) = σ.1 (σ.2 9).
  rw [equiv.apply_symm_apply σ (σ.2 9)],
  -- Now we need to show that σ.1 (σ.2 9) = 0.
  rw [h₃],
  -- Now we need to show that σ.1 20 = 0.
  rw [h₀],
  -- Now we need to show that σ.1 0 = 0.
  rw [h₁],
  -- Now we need to show that 0 = 0.
  rw [zero_apply],
  -- This is the final result.
  refl,

end
