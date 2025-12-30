import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2009_p9
  (a b c : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f (x + 3) = 3 * x^2 + 7 * x + 4)
  (h₁ : ∀ x, f x = a * x^2 + b * x + c) :
  a + b + c = 2 :=
begin

  have h₂ : ∀ x, f (x + 3) = a * (x + 3)^2 + b * (x + 3) + c,
  by { intro x, rw [h₁, h₁, h₁] },

  have h₃ : ∀ x, a * (x + 3)^2 + b * (x + 3) + c = 3 * x^2 + 7 * x + 4,
  by { intro x, rw [h₂] },

  have h₄ : a * (x + 3)^2 + b * (x + 3) + c = a * (x^2 + 6 * x + 9) + b * (x + 3) + c,
  by { intro x, ring },

  have h₅ : a * x^2 + 6 * a * x + 9 * a + b * x + 3 * b + c = 3 * x^2 + 7 * x + 4,
  by { intro x, rw [h₄] },

  have h₆ : a * x^2 + (6 * a + b) *
end
