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
  from h₀ 33,
  have h₂ : σ.1 33 = 40137,
  by ring,
  have h₃ : σ.2 40137 = 2,
  from rfl,
  exact h₃,

end
