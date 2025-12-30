import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  -- Step 1: Isolate y in the equation x + y = 7.
  have h₂ : y = 7 - x,
  from eq_sub_of_add_eq h₀,

  -- Step 2: Substitute the value of y from step 1 into the equation 3x + y = 45.
  have h₃ : 3 * x + (7 - x) = 45,
  from eq_sub_of_add_eq (eq_add_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq (eq_mul_of_mul_eq
end
