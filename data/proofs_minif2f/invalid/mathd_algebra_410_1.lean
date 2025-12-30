import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_410
  (x y : ℝ)
  (h₀ : y = x^2 - 6 * x + 13) :
  4 ≤ y :=
begin

  have h₁ := pow_nonneg x,
  have h₂ := sub_nonneg (6 * x) (13),
  have h₃ := add_nonneg (pow_nonneg x) h₂,
  have h₄ := pow_nonneg (2 * x - 3),
  have h₅ := sub_nonneg (2 * x - 3) (3),
  have h₆ := add_nonneg h₄ h₅,
  have h₇ := pow_nonneg (x - 3),
  have h₈ := sub_nonneg (x - 3) (3),
  have h₉ := add_nonneg h₇ h₈,
  have h₁₀ := pow_nonneg (2 * (x - 3)),
  have h₁₁ := sub_nonneg (2 * (x - 3)) (3),
  have h₁₂ := add_nonneg h₁₀ h₁₁,
  have h₁₃ := pow_nonneg (x - 3),
  have h₁₄ := sub_nonneg (x - 3) (3),
  have h₁₅ := add_nonneg h₁₃ h₁₄,
  have h₁
end
