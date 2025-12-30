import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_2unitcircatblt1
  (a b : ℝ)
  (h₀ : a^2 + b^2 = 2) :
  a * b ≤ 1 :=
begin

  have h₁ := pow_two_nonneg a,
  have h₂ := pow_two_nonneg b,
  have h₃ := add_nonneg h₁ h₂,
  have h₄ := add_le_add h₃ h₃,
  have h₅ := le_abs_and_add_le_abs_of_abs_le_one a b,
  have h₆ := add_le_add h₄ h₅,
  have h₇ := sq_abs_eq_abs_sq a b,
  have h₈ := le_of_eq h₇ h₀,
  have h₉ := abs_le_one a b,
  have h₁₀ := and_le_of_abs_le_one a b h₉,
  have h₁₁ := add_le_add h₁₀ h₁₀,
  have h₁₂ := le_trans h₆ h₁₁,
  have h₁₃ := le_trans h₁₂ h₈,
  have h₁₄ := le_of_eq h₇ h₀,
  have h₁₅ := le_abs_and_add_le_abs_of_abs_le_one a b,
  have h₁₆ := add_le_add h₄ h₁₅,
  have h₁₇ := sq_abs_eq_abs_sq a
end
