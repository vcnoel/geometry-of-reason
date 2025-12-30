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

  have h₃ : ∀ x, f (g x) = g (f x) := by {
    intros x,
    have h₃₁ : f (g x) = g (f x) := h₂ x,
    have h₃₂ : f (g x) = g (f x) := h₃₁,
    exact h₃₂,
  },
  have h₄ : ∀ x, f x = g x + 2 := by {
    intros x,
    have h₄₁ : f x = x + 2 := h₀ x,
    have h₄₂ : g x = x^2 := h₁ x,
    have h₄₃ : g x + 2 = (x^2) + 2 := by {
      ring,
    },
    have h₄₄ : g x + 2 = f x := by {
      rw h₄₁,
      exact h₄₃,
    },
    exact h₄₄,
  },
  have h₅ : ∀ x, g x = f x - 2 := by {
    intros x,
    have h₅₁ : g x = x^2 := h₁ x,
   
end
