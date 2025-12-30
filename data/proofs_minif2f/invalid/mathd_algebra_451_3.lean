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

  have h₄ : σ.1 (σ.1 9) = σ.1 (σ.1 (σ.2 9)),
  by simp [h₃],

  have h₅ : σ.1 (σ.1 (σ.2 9)) = σ.1 (σ.1 20),
  by simp [h₃],

  have h₆ : σ.1 (σ.1 20) = σ.1 0,
  by simp [h₁],

  have h₇ : σ.1 0 = -15,
  by simp [h₀],

  have h₈ : σ.1 (σ.1 9) = -15,
  by simp [h₄, h₅, h₆, h₇],

  exact h₈,

end
