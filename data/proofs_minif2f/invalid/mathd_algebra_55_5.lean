import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_55
  (q p : ℝ)
  (h₀ : q = 2 - 4 + 6 - 8 + 10 - 12 + 14)
  (h₁ : p = 3 - 6 + 9 - 12 + 15 - 18 + 21) :
  q / p = 2 / 3 :=
begin

  -- Assume the statement is true
  assume h₂ : q / p = 2 / 3,

  -- Use h₂ to derive a contradiction
  have h₃ : (q / p) * p = (2 / 3) * p,
    by rw [h₂],

  -- Simplify the equation
  have h₄ : q = (2 / 3) * p,
    by rw [h₃, mul_assoc],

  -- Derive a contradiction
  have h₅ : q ≠ p,
    by linarith,

  -- Assume the statement is false
  assume h₆ : q / p ≠ 2 / 3,

  -- Use h₆ to derive a contradiction
  have h₇ : (q / p) * p ≠ (2 / 3) * p,
    by rw [h₆],

  -- Derive a contradiction
  have h₈ : q = p,
    by linarith,

  -- Use h₈ to derive a contradiction
  have h₉ : q ≠ p,
    by linarith,

  -- Combine h₇ and h₉
  have h₁₀ : h₇ ∧ h₉
end
