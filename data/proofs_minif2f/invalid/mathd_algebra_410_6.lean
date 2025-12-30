import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ : 4 ≤ (x - 3)^2,
  by {
    -- The inequality (x-3)^2 >= 0 holds for all x in ℝ.
    apply real.ge_zero_of_nonneg,
    -- Expand the expression (x-3)^2.
    rw real.pow_two,
    -- Distribute the exponent to the terms inside the parentheses.
    rw pow_sub,
    -- Use the fact that the square of any real number is non-negative.
    apply real.nonneg,
  },
  -- We can rewrite the inequality 4 ≤ (x - 3)^2 as 4 ≤ (x - 3)^2 - 4 + 4.
  have h₂ : 4 ≤ (x - 3)^2 - 4 + 4,
  by {
    -- Add 4 to both sides of the inequality 4 ≤ (x - 3)^2.
    linarith,
    -- Add 4 to both sides again to get 8 ≤ (x - 3)^2 + 4.
    linarith,
  },
  -- Expand the right-hand side of the inequality 8 ≤ (x - 3)^2 + 4.
  have h₃ : 
end
