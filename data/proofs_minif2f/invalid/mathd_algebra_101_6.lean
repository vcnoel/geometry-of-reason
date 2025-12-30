import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_101
  (x : ℝ)
  (h₀ : x^2 - 5 * x - 4 ≤ 10) :
  x ≥ -2 ∧ x ≤ 7 :=
begin

  -- First, we must solve the inequality x^2 - 5x - 4 ≤ 10
  -- We can do this by first moving all terms to the left-hand side
  -- of the inequality, giving us x^2 - 5x - 14 ≤ 0
  have h₁ : x^2 - 5*x - 14 ≤ 0,
  by {
    rw [sub_add_sub, add_sub_assoc, sub_sub, sub_sub, add_zero],
    exact h₀,
  },

  -- Next, we need to factor the left-hand side of the inequality
  -- This gives us (x + 2)(x - 7) ≤ 0
  have h₂ : (x + 2)*(x - 7) ≤ 0,
  by {
    ring,
  },

  -- Now, we can use the fact that the product of two numbers is
  -- non-positive if and only if one of the numbers is non-positive
  -- and the other number is non-negative
  have h₃ : x + 2 ≤ 0 ∧ x - 7 ≥ 0 ∨ x + 2 ≥ 0 ∧ x - 7 ≤ 0,
 
end
