import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_433
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * real.sqrt (2 * x - 7) - 8) :
  f 8 = 1 :=
begin

  have h₁ := h₀ 8,
  have h₂ := real.sqrt 7,
  have h₃ := 2 * 8 - 7,
  have h₄ := real.sqrt h₃,
  have h₅ := 3 * h₄ - 8,
  have h₆ := h₅ = h₅,
  have h₇ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₈ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₉ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₁₀ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₁₁ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₁₂ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₁₃ := by {
    rw [h₅, h₅],
    refl,
  },
  have h₁₄ := by {
    rw [h
end
