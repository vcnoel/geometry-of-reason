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

  calc
    σ.2 33 = (σ.1 33)^2 : by simp only [pow_two, σ.2, h₀]
   ... = (4 * 33^3 + 1)^2 : by simp only [h₀]
   ... = 4 * 33^6 + 1 : by simp only [pow_two]
   ... = 2 : by ring

end
