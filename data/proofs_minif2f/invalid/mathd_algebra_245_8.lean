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

  -- expand the left side of the equation
  calc
    (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 =
      ((4 / x) * ((x / 4)⁻¹)) * (((3 * x^3) / x) * ((x / (3 * x^3))⁻¹)) *
        (((2 * x) / 1) * ((1 / (2 * x))⁻¹)) : by {norm_num},
  -- simplify each term
  calc
    ((4 / x) * ((x / 4)⁻¹)) =
      ((4 / x) * (4 / x)) : by {norm_num},
  -- simplify each term
  calc
    ((4 / x) * (4 / x)) = (16 / x^2) : by {norm_num},
  -- simplify each term
  calc
    (((3 * x^3) / x) * ((x / (3 * x^3))⁻¹)) =
      (((3 * x^3) / x) * ((3 * x^3
end
