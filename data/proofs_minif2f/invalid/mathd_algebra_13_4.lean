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

  -- Apply h₀ to x = 3 to get the value of a.
  have h₁ : a / (3 - 3) + b / (3 - 5) = 4 * 3 / (3^2 - 8 * 3 + 15),
  { apply h₀, split,
    { refl },
    { simp } },
  -- Simplify the equation to get the value of a.
  have h₂ : a / 0 + b / (-2) = 12 / 0,
  { simp at h₁ },
  -- Since a / 0 is undefined, we must have a = 0.
  have h₃ : a = 0,
  { rw [div_zero] at h₂ },
  -- Apply h₀ to x = 5 to get the value of b.
  have h₄ : a / (5 - 3) + b / (5 - 5) = 4 * 5 / (5^2 - 8 * 5 + 15),
  { apply h₀, split,
    { refl },
    { simp } },
  -- Simplify the equation to get the value of b.
  have h₅ : 
end
