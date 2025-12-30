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

  have h₁ : (3 * x^3) / x = 3 * x^2,
  { ring },
  have h₂ : ((3 * x^3) / x)^2 = (3 * x^2)^2,
  { ring },
  have h₃ : (1 / (2 * x))⁻¹ = (2 * x)^(-1),
  { ring },
  have h₄ : ((1 / (2 * x))⁻¹)^3 = ((2 * x)^(-1))^3,
  { ring },
  have h₅ : (4 / x)⁻¹ = x / 4,
  { ring },
  have h₆ : (x / 4) * (3 * x^2)^2 * ((2 * x)^(-1))^3 = (x / 4) * (3^2 * x^4) * (2^(-3) * x^(-3)),
  { ring },
  have h₇ : (x / 4) * (3^2 * x^4) * (2^(-3) * x^(-3)) = (3^2 * x * (2^(-3
end
