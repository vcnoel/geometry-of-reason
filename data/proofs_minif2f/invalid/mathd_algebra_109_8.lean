import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin

  rw [h₁],
  rw [mul_zero, add_zero, mul_zero, add_zero],
  rw [h₀, add_zero, mul_zero, add_zero, add_zero, add_zero],
  rw [zero_mul, add_zero, add_zero, zero_mul],
  rw [h₀, add_zero, mul_zero, add_zero, add_zero, add_zero, add_zero],
  rw [h₀, add_zero, add_zero, zero_mul],
  rw [h₀, add_zero, add_zero, zero_mul],
  rw [h₀, add_zero, zero_mul],
  rw [h₀, zero_mul],
  rw [h₀],
  exact eq_zero_of_add_eq_zero_left (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add_right.mpr (eq_zero_of_add_eq_zero_left (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add_right.mpr (eq_zero_of_add_eq_zero_left (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add_right.mpr (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add_right.mpr (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add_right.mpr (eq_of_sub_eq_zero (sub_eq_zero_iff_eq_add
end
