import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_493
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 - 4 * real.sqrt x + 1) :
  f (f 4) = 70 :=
begin

  have h₁ : f 4 = 4^2 - 4 * real.sqrt 4 + 1 := h₀ 4,
  have h₂ : f 4 = 16 - 8 + 1 := by { rw h₁, ring },
  have h₃ : f 4 = 9 := by { rw h₂, ring },
  have h₄ : f (f 4) = f 9 := by { rw h₃, refl },
  have h₅ : f 9 = 9^2 - 4 * real.sqrt 9 + 1 := h₀ 9,
  have h₆ : f 9 = 81 - 4 * 3 + 1 := by { rw h₅, ring },
  have h₇ : f 9 = 74 := by { rw h₆, ring },
  have h₈ : f (f 4) = 74 := by { rw h₇, refl },
  exact h₈

end
