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

  have h₁ : x ≠ 0 ∧ x ≠ 0 := and.intro h₀ h₀,
  have h₂ : x ≠ 0 ∧ x ≠ 0 := and.intro h₀ h₀,
  have h₃ : (4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3 = (4 / x)⁻¹ * (3 * x^3 / x)^2 * (2 * x)^3,
    by rw [pow_neg_one, pow_neg_one, pow_neg_one],
  have h₄ : (4 / x)⁻¹ * (3 * x^3 / x)^2 * (2 * x)^3 = (4 / x)⁻¹ * (3 * x^3 / x)^2 * 8 * x^3,
    by rw [pow_neg_one, pow_neg_one, pow_neg_one],
  have h₅ : (4 / x)⁻¹ * (3 * x^3 / x)^2 * 8 * x^3 = (4 / x)⁻¹ * (3 * x^3 / x)^2 *
end
