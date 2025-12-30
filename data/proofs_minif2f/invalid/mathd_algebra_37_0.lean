import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_37
  (x y : ℝ)
  (h₀ : x + y = 7)
  (h₁ : 3 * x + y = 45) :
  x^2 - y^2 = 217 :=
begin

  have h₂ := mul_sub x y y,
  have h₃ := eq_sub_of_add_eq h₁ (sub_add h₂ h₀),
  have h₄ := eq_mul_two_div (2 * x) (2 * y),
  have h₅ := sub_eq_sub h₃ h₄,
  have h₆ := mul_sub x y y,
  have h₇ := eq_sub_of_add_eq h₅ h₆,
  have h₈ := sub_eq_sub h₇ h₄,
  have h₉ := sub_mul_two_div x y,
  have h₁₀ := eq_mul_two_div x y,
  have h₁₁ := sub_eq_sub h₉ h₁₀,
  have h₁₂ := sub_eq_sub h₁₁ h₇,
  have h₁₃ := sub_eq_sub h₁₂ h₄,
  have h₁₄ := sub_eq_sub h₁₃ h₆,
  have h₁₅ := sub_eq_sub h₁₄ h₂,
  have h₁₆ := sub_eq_sub h₁₅ h₃,
  have h₁₇ := sub_eq_sub h₁₆ h₅,
 
end
