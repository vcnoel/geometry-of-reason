import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_67
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = 5 * x + 3)
  (h₁ : ∀ x, g x = x^2 - 2) :
  g (f (-1)) = 2 :=
begin

  have h₂ : f (-1) = 5 * (-1) + 3 := by { rw h₀, }
  have h₃ : f (-1) = -2 := by { rw h₂, }
  have h₄ : g (-2) = (-2)^2 - 2 := by { rw h₁, }
  have h₅ : g (-2) = 2 := by { rw h₄, }
  have h₆ : g (f (-1)) = g (-2) := by { rw h₃, }
  have h₇ : g (f (-1)) = 2 := by { rw h₆, }
  exact h₇,

end
