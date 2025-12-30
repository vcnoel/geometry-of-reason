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

  apply_rules [sqrt_mul_sub_mul_eq_add, mul_sub_eq_add_mul, 
    mul_le_mul_left, add_le_add_left, add_le_add_left, 
    add_le_add_right, add_le_add_left, add_le_add_left],

end
