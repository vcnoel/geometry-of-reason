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

  have h₁ := h₀ 33,
  have h₂ : 4 * 33^3 + 1 = 2,
  { rw [h₁, h₂, h₂],
    assumption },

end
