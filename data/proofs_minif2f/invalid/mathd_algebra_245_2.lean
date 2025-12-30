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

  have h₁ : x ≠ 0 ∧ 2 * x ≠ 0 ∧ 4 * x ≠ 0 ∧ 3 * x^3 ≠ 0,
  { split; assumption },

  have h₂ : (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 =
    (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((2 * x) / 1)^3,
  { rw inv_mul_cancel h₁.2 },

  have h₃ : (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((2 * x) / 1)^3 =
    (4 / x)⁻¹ * ((3 * x^3) / x)^2 * (2 * x)^3,
  { rw pow_mul h₁.2 },

  have h₄ : (4 / x)⁻¹ * ((3 * x^3) / x)^2 * (2 * x)^3 =
    (4 / x)⁻¹ * (3 * x^3) * (2
end
