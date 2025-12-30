import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_132
  (x : ℝ)
  (f g : ℝ → ℝ)
  (h₀ : ∀ x, f x = x + 2)
  (h₁ : ∀ x, g x = x^2)
  (h₂ : f (g x) = g (f x)) :
  x = - 1/2 :=
begin

  have h₃ : f (g x) = g (f x) := by apply h₂,
  have h₄ : g (f x) = (f x)^2 := by apply h₁,
  have h₅ : f (g x) = (x^2)^2 := by apply h₁,
  have h₆ : f (g x) = x^4 := by apply pow_two,
  have h₇ : g (f x) = (x + 2)^2 := by apply h₁,
  have h₈ : g (f x) = x^2 + 4x + 4 := by apply pow_add,
  have h₉ : x^4 = x^2 + 4x + 4 := by apply h₆,
  have h₁₀ : x^4 = x^2 + 4x + 4 := by apply h₇,
  have h₁₁ : x^4 = x^2 + 4x + 4 := by apply h₉,
  have h₁₂ : x^4 - x^2 - 4x - 4 = 0 := by apply sub_self,
  have h
end
