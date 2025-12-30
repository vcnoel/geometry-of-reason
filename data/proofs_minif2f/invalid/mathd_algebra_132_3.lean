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

  have h₃ : f x = x + 2 := h₀ x,
  have h₄ : g x = x^2 := h₁ x,
  have h₅ : f (g x) = g (f x) := h₂,
  have h₆ : f (x^2) = x^2 + 2,
  { rw h₃ },
  have h₇ : g (x + 2) = (x + 2)^2,
  { rw h₄ },
  have h₈ : x^2 + 2 = (x + 2)^2,
  { rw [h₆, h₇] at h₅ },
  have h₉ : x^2 + 2 = x^2 + 4x + 4,
  { rw pow_two at h₈ },
  have h₁₀ : 4x + 2 = 0,
  { linarith },
  have h₁₁ : x = -1/2,
  { linarith },
  exact h₁₁,

end
