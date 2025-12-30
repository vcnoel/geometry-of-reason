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

  have h₄ : σ.1 9 = σ.1 (σ.2 9) := by { rw [σ.2 9, h₃], refl },
  have h₅ : σ.1 (σ.1 9) = σ.1 (σ.1 (σ.2 9)) := by { rw h₄ },
  have h₆ : σ.1 (σ.1 (σ.2 9)) = σ.1 (σ.2 (σ.1 9)) := by { rw h₄ },
  have h₇ : σ.1 (σ.1 (σ.2 9)) = σ.1 (σ.2 0) := by { rw h₆, rw h₁ },
  have h₈ : σ.1 (σ.1 (σ.2 9)) = σ.1 3 := by { rw h₇ },
  have h₉ : σ.1 (σ.1 (σ.2 9)) = σ.1 (σ.1 3) := by { rw h₈ },
  have h₁₀ : σ.1 (σ.1 (σ.2 9))
end
