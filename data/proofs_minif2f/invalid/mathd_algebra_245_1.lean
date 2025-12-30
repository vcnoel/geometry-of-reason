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

  have h₁ := (mul_assoc _ _ _).symm,
  have h₂ := (mul_comm _ _).symm,
  have h₃ := (mul_assoc _ _ _).symm,
  have h₄ := (mul_comm _ _).symm,
  have h₅ := (mul_assoc _ _ _).symm,
  have h₆ := (mul_comm _ _).symm,
  have h₇ := (mul_assoc _ _ _).symm,
  have h₈ := (mul_comm _ _).symm,
  have h₉ := (mul_assoc _ _ _).symm,
  have h₁₀ := (mul_comm _ _).symm,
  have h₁₁ := (mul_assoc _ _ _).symm,
  have h₁₂ := (mul_comm _ _).symm,
  have h₁₃ := (mul_assoc _ _ _).symm,
  have h₁₄ := (mul_comm _ _).symm,
  have h₁₅ := (mul_assoc _ _ _).symm,
  have h₁₆ := (mul_comm _ _).symm,
  have h₁₇ := (
end
