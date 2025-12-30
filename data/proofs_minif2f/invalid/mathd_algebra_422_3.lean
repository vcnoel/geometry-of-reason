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

  have h₂ : σ.1 0 = 0, from
    calc σ.1 0 = σ.1 (0 + 0) : by simp
   ... = σ.1 (σ.2 0 + σ.2 0) : by simp
   ... = σ.1 (σ.1 (-12) + σ.1 (5 * 0 - 12)) : by simp [h₀]
   ... = σ.1 (σ.1 (-12) + σ.1 (-12)) : by simp [h₀]
   ... = σ.1 (σ.1 (-12) + σ.1 (σ.1 (-12))) : by simp
   ... = σ.1 (σ.1 (σ.1 (-12) + σ.1 (-12))) : by simp
   ... = σ.1 (σ.1 (σ.1 (5 * -12 - 12))) : by simp [h₀]
   ... = σ.1 (σ.1 (σ.1 (5 * -12 + 5 * -12))) : by simp
   ... = σ.1 (σ.1 (σ.1 (5 * (-12 +
end
