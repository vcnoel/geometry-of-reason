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

  -- Calculate the left side of the equation
  have h₁ : (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 =
             ((4 / x)^(-1)) * ((3 * x^3) / x)^2 * ((2 * x) / 1)^3,
  by rw [inv_div, pow_neg_one],

  -- Simplify the expression
  have h₂ : ((4 / x)^(-1)) * ((3 * x^3) / x)^2 * ((2 * x) / 1)^3 =
             ((4 / x)^(-1)) * ((3 * x^3) / x)^2 * (2 * x)^3,
  by rw [pow_one],

  -- Apply the power rule for multiplication
  have h₃ : ((4 / x)^(-1)) * ((3 * x^3) / x)^2 * (2 * x)^3 =
             ((4 / x)^(-1)) * ((3 * x^3) / x)^2 * (8 * x^3),
  by rw [pow_three],

  -- Simplify
end
