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

  have h₂ : ∀ x, x^2 + a * x + b = x^2 - (a + b) * x + a * b := by {
    intro x,
    rw [h₁ x],
    refl,
  },
  have h₃ : a * b = a * b := by {
    rw h₂ 0,
    refl,
  },
  have h₄ : a + b = 0 := by {
    have h₅ : ∀ x, (a + b) * x = a * x + b * x := by {
      intros,
      ring,
    },
    have h₆ : ∀ x, a * x + b * x = a * x + b * x := by {
      intros,
      refl,
    },
    have h₇ : a + b = 0 := by {
      have h₈ : a + b = a * 0 + b * 0 := by {
        rw h₅ 0,
        refl,
      },
      have h₉ : a * 0 + b * 0 = a * 0 + b * 0 := by {
        rw h₆ 0,
        refl,
      },
     
end
