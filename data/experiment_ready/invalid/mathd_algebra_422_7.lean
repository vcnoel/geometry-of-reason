import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_422
  (x : ℝ)
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 5 * x - 12)
  (h₁ : σ.1 (x + 1) = σ.2 x) :
  x = 47 / 24 :=
begin

  have h₂ : σ.1 x = 5 * σ.2 x,
  from h₁ ▸ h₀ x,
  have h₃ : σ.2 x = 24 / 47,
  from (congr_arg σ.2 (by ring)) ▸ (by ring),
  show x = 47 / 24,
  from congr_arg σ.2 (by ring) ▸ h₂ ▸ h₃ ▸ (by ring),

end
