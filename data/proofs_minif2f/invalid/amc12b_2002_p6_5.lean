import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12b_2002_p6
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : ∀ x, x^2 + a * x + b = (x - a) * (x - b)) :
  a = 1 ∧ b = -2 :=
begin

  -- Given the equality (x^2 + a * x + b) = (x - a) * (x - b), we can expand the RHS
  have h₂ : ∀ x, x^2 + a * x + b = x^2 - (a + b) * x + a * b,
  by {
    intros x,
    rw [h₁],
    expand,
  },

  -- Now we can use the fact that the equality holds for all x, including x = 0
  have h₃ : a * b = a * b ∧ (a + b) * 0 = 0,
  by {
    rw [h₂, h₂],
    simp,
  },

  -- Now we can use the fact that a ≠ 0 and b ≠ 0 to conclude that a + b = 0
  have h₄ : a + b = 0,
  by {
    cases h₀ with h₀a h₀b,
    rw [h₃, h₀a, h₀b],
    simp,
  },

  -- Now we can use the fact that a + b = 0 to conclude that a = 1 and b = -2
  have h
end
