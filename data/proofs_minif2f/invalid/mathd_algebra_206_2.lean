import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_206
  (a b : ℝ)
  (f : ℝ → ℝ)
  (h₀ : ∀ x, f x = x^2 + a * x + b)
  (h₁ : 2 * a ≠ b)
  (h₂ : f (2 * a) = 0)
  (h₃ : f b = 0) :
  a + b = -1 :=
begin

  have h₄ : f (a + b) = (a + b)^2 + a * (a + b) + b,
  { simp only [h₀] },
  have h₅ : (a + b)^2 + a * (a + b) + b = 0,
  { simp only [h₄] },
  have h₆ : a + b = -1,
  { field_simp [h₅] },
  exact h₆

end
