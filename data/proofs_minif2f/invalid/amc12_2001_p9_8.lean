import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2001_p9
  (f : ℝ → ℝ)
  (h₀ : ∀ x > 0, ∀ y > 0, f (x * y) = f x / y)
  (h₁ : f 500 = 3) : f 600 = 5 / 2 :=
begin

  have h₂ : f 600 = f 500 * 5 / 2 := by
    have h₃ : 600 = 500 * 5 / 2 := by
      ring,
    have h₄ : f 600 = f (500 * 5 / 2) := by
      congr,
    have h₅ : f (500 * 5 / 2) = f 500 / (5 / 2) := by
      exact h₀ 500 (5 / 2),
    have h₆ : f 500 / (5 / 2) = f 500 * 2 / 5 := by
      ring,
    exact h₆.trans h₄.trans h₅,
  exact h₁ * 5 / 2,

end
