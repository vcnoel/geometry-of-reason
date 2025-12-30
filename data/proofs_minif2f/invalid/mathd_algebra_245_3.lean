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

  -- Begin by rewriting the left-hand side of the equation
  calc
    (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3
      = ((4 / x)⁻¹ * (3 * x^3) / x) * ((3 * x^3) / x) * ((1 / (2 * x))⁻¹)^3
      : by simp only [mul_assoc, mul_comm]

  -- Continue by expanding the first term of the product
  = ((4 / x) * (x / 4)) * ((3 * x^3) / x) * ((3 * x^3) / x) * ((1 / (2 * x))⁻¹)^3
      : by { simp only [inv_mul_cancel h₀, mul_assoc] }

  -- Continue by expanding the third term of the product
  = ((1 / 4) * (4 / x) * (x / 4)) * ((3 * x^3) / x) * ((3 * x^3) / x) * (2 * x)^3
      :
end
