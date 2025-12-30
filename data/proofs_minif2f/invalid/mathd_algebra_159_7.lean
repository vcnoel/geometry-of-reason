import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_159
  (b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = 3 * x^4 - 7 * x^3 + 2 * x^2 - b * x + 1)
  (h₁ : f 1 = 1) :
  b = -2 :=
begin

  have h₂ : f 1 = 3 * 1^4 - 7 * 1^3 + 2 * 1^2 - b * 1 + 1 := by {apply h₀, assumption},
  have h₃ : 1 = 3 - 7 + 2 - b + 1 := by {apply h₂, assumption},
  have h₄ : 4 = 3 + 2 - b := by {apply h₃, assumption},
  have h₅ : 4 = 5 - b := by {apply h₄, assumption},
  have h₆ : -b = 4 - 5 := by {apply h₅, assumption},
  have h₇ : -b = -1 := by {apply h₆, assumption},
  have h₈ : b = -(-1) := by {apply h₇, assumption},
  have h₉ : b = -2 := by {apply h₈, assumption},
  assumption

end
