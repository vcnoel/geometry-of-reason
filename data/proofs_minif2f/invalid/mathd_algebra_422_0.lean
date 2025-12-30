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

  have h₂ : ∀ x, σ.2 x = (5 * x - 12) / 4,
  { intro x,
    have h₃ : σ.2 x = σ.1 (σ.2 x),
    { rw [h₁, h₁],
      refl },
    have h₄ : σ.1 (σ.2 x) = 5 * (σ.2 x) - 12,
    { rw [h₀],
      refl },
    have h₅ : (5 * (σ.2 x) - 12) / 4 = (5 * x - 12) / 4,
    { rw [← h₂ x, ← h₂ x],
      refl },
    rw [h₅],
    refl },
  have h₆ : σ.2 x = (5 * x - 12) / 4,
  { exact h₂ x },
  have h₇ : σ.1 (σ.2 x) = σ.2 x,
  { rw [h₁, h₁],
    refl },
  have h₈ : σ.1 (σ.2 x) = 5 * (σ.2 x) - 12,

end
