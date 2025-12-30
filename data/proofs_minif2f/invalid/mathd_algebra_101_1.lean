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

  -- Step 1: First, we will use the quadratic formula to solve for the roots of the quadratic equation.
  -- The roots are x = -2 and x = 7.
  let a : ℝ := 1,
  let b : ℝ := -5,
  let c : ℝ := -4,

  -- Step 2: We will then factor the quadratic equation as (x + 2)(x - 7) = 0.
  have h₁ : (x + 2) * (x - 7) = 0,
  from by {
    rw [mul_eq_zero, or_iff_not_imp_left],
    exact (le_of_lt (zero_lt_one.trans (zero_lt_two.trans (add_pos zero_pos (neg_pos_of_neg (neg_lt_zero))))) and le_of_lt (zero_lt_one.trans (zero_lt_two.trans (add_pos zero_pos (neg_pos_of_neg (neg_lt_zero)))))),

    -- Step 3: We can then use the fact that if a product of two numbers is zero, then one of the numbers must be zero.
    have h₂ : x + 2 = 0 ∨ x - 7 = 0,
    from or_iff_not_imp_left
end
