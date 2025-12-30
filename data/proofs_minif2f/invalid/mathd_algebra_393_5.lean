import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_393
  (σ : equiv ℝ ℝ)
  (h₀ : ∀ x, σ.1 x = 4 * x^3 + 1) :
  σ.2 33 = 2 :=
begin

  have h₁ : σ.1 33 = 4 * 33^3 + 1,
  { apply h₀ },
  have h₂ : σ.2 (4 * 33^3 + 1) = σ.2 (4 * 33^3 + 1),
  { apply rfl },
  have h₃ : σ.2 (4 * 33^3 + 1) = 2,
  { apply rfl },
  exact h₂.symm ▸ h₃,

end
