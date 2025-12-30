import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_13
  (a b : ℝ)
  (h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5)) :
  a = -6 ∧ b = 10 :=
begin

  have h₁ : ∀ x, (x ≠ 3 ∧ x ≠ 5) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5),
  { intro x,
    assume h₂ : x ≠ 3 ∧ x ≠ 5,
    have h₃ : x ≠ 3 ∨ x ≠ 5,
    { rintro (rfl, h₂), exact h₂ },
    have h₄ : x ≠ 3 ∨ x ≠ 5 → x ≠ 3 ∧ x ≠ 5 ∨ x = 3 ∨ x = 5,
    { intro h₃, exact or.elim h₃ (λ h₂, or.intro_left _ h₂) (λ h₂, or.intro_right _ h₂) },
    have h₅ : x ≠ 3 ∧ x ≠ 5 ∨ x = 3 ∨ x = 5,
    { exact h₄ h₃ },
    have h₆ : x = 3 ∨ x = 5 ∨ x ≠ 3 ∧ x ≠ 5,
    { exact or.elim h₅ (λ h₂, or.intro
end
