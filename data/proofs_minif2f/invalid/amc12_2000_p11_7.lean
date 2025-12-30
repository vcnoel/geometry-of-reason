import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ : a ≠ b,
  by_contra h₂,
  { have h₃ : a * b = a - b,
    by linarith [h₂],
    have h₄ : a = 0 ∨ b = 0,
    by linarith [h₃, h₀],
    { exact h₄.elim (λ h₅, h₀.left h₅) (λ h₆, h₀.right h₆) },
  },
  have h₅ : (a - b) ≠ 0,
  by_contra h₅,
  { have h₆ : a = b,
    by linarith [h₅],
    exact h₂ h₆ },
  have h₇ : (a - b) * (a + b) = a * a - b * b,
  by ring,
  have h₈ : a * a - b * b ≠ 0,
  by_contra h₈,
  { have h₉ : a = b,
    by linarith [h₈],
    exact h₂ h₉ },
  have h₁₀ : (a - b) ≠ 0,
  by_contra h
end
