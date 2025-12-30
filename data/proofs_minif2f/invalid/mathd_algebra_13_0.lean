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

  have h₁ : ∀ x, x - 3 ≠ 0 ∧ x - 5 ≠ 0 → 4 * x / ((x - 3) * (x - 5)) = a / (x - 3) + b / (x - 5),
  { intros x hx,
    exact h₀ x hx },
  have h₂ : ∀ x, (x - 3) * (x - 5) ≠ 0 → 4 * x / ((x - 3) * (x - 5)) = a / (x - 3) + b / (x - 5),
  { intros x hx,
    exact h₁ x hx },
  have h₃ : ∀ x, (x - 3) * (x - 5) ≠ 0 → a / (x - 3) + b / (x - 5) = 4 * x / ((x - 3) * (x - 5)),
  { intros x hx,
    exact h₂ x hx },
  have h₄ : ∀ x, (x - 3) * (x - 5) ≠ 0 → a = 4 * x / ((x
end
