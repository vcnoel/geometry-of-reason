import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_245
  (x : ℝ)
  (h₀ : x ≠ 0) :
  (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 = 18 * x^8 :=
begin

  field_simp [div_mul_eq_mul_div, mul_div_cancel_left],
  ring_nf,
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [pow_mul_eq_mul_pow],
  rewrite_homes [
end
