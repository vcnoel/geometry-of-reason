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

  -- Assume the premise of the theorem
  assume h₁ : ∀ x, (x - 3 ≠ 0 ∧ x - 5 ≠ 0) → 4 * x / (x^2 - 8 * x + 15) = a / (x - 3) + b / (x - 5),

  -- Substitute x = 3 in the equation
  have h₂ : 4 * 3 / (3^2 - 8 * 3 + 15) = a / (3 - 3) + b / (3 - 5),
  from h₁ 3 (by simp [ne, and_true, true_and, ne_of_gt (by norm_num)])

  -- Simplify the equation
  have h₃ : 4 * 3 / 3 = a / 0 + b / (-2),
  from h₂,

  -- Solve for a
  have h₄ : a = -6,
  by {simp [h₃, ne_of_gt (by norm_num), div_zero, real.div_neg, real.div_neg_neg]},

  -- Substitute x = 5 in the equation
  have h₅ : 4 * 5 /
end
