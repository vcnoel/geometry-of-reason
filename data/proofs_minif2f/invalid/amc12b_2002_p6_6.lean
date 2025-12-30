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

  -- Expand the equation
  have h₂ : ∀ x, x^2 + a * x + b = x^2 - (a + b) * x + a * b,
  by {
    intros x,
    rw h₁,
    simp,
  },

  -- Now, equate the coefficients
  have h₃ : a + b = a + b,
  by {
    simp only [h₂],
  },

  -- Equate the constant terms
  have h₄ : a * b = a * b,
  by {
    simp only [h₂],
  },

  -- Solve the system of equations
  have h₅ : a = 1,
  by {
    -- a ≠ 0 by h₀
    -- a + b = a + b by h₃
    -- => b = 0
    have h₆ : b = 0,
    by {
      rw h₃,
      have h₇ : b = a + b - a,
      by {
        ring_nf,
      },
      have h₈ : b = a + b - a,
      by {
        rw h₃,
      },
      have h₉ : b = b,
      by
end
