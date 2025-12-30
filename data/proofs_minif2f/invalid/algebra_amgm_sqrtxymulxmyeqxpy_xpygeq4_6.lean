import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_amgm_sqrtxymulxmyeqxpy_xpygeq4
  (x y : ℝ)
  (h₀ : 0 < x ∧ 0 < y)
  (h₁ : y ≤ x)
  (h₂ : real.sqrt (x * y) * (x - y) = (x + y)) :
  x + y ≥ 4 :=
begin

  have h₃ : 0 < x + y,
  from add_pos h₀ h₀,

  have h₄ : x - y < 0,
  from sub_neg h₀ h₀,

  have h₅ : x + y ≥ 2 * (x - y),
  from add_nonneg (le_of_lt h₄) (le_of_lt h₃),

  have h₆ : x + y ≥ 2 * real.sqrt (x * y) * (x - y),
  from add_nonneg (le_of_lt h₄) (le_of_lt h₃),

  have h₇ : 2 * real.sqrt (x * y) * (x - y) ≥ 2 * (x - y),
  from mul_nonneg (real.sqrt_nonneg (x * y)) (le_of_lt h₄),

  have h₈ : 2 * (x - y) ≥ 0,
  from mul_nonneg (le_of_lt h₄) (le_of_lt h₄),

  have h₉ : 2 * (x - y) ≥ 0,
  from h₈,

  have h₁₀ : 2 * real.sqrt (
end
