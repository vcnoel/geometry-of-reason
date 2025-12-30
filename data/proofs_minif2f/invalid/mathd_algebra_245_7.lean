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

  -- First, rewrite the expression using the rules of exponents
  have h₁ := ((4 / x)⁻¹ * ((3 * x^3) / x)^2 * ((1 / (2 * x))⁻¹)^3).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₂ := (h₁.multiplying_algebraic_numeral).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₃ := (h₂.multiplying_algebraic_numeral).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₄ := (h₃.multiplying_algebraic_numeral).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₅ := (h₄.multiplying_algebraic_numeral).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₆ := (h₅.multiplying_algebraic_numeral).symm,
  -- Then, simplify the expression using the rules of exponents
  have h₇ := (h₆
end
