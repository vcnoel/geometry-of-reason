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

  -- h₀ is a ∀-statement, so we should start by assuming the hypothesis and then derive a contradiction.
  assume h₀ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5),

  -- Now, we need to derive a contradiction by finding a value of x that makes the left-hand side of the equation equal to the right-hand side.
  have h₁ : ∀ x, (x ≠ 3 ∧ x ≠ 5) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5),
  { intro x,
    assume h₂ : (x ≠ 3 ∧ x ≠ 5),
    have h₃ : x^2 - 8 * x + 15 ≠ 0,
    { intro h₄,
      have h₅ : x = 3 ∨ x = 5,
      { have h₆ : (x - 3) * (x - 
end
