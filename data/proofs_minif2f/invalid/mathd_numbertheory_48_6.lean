import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_48
  (b : ℕ)
  (h₀ : 0 < b)
  (h₁ : 3 * b^2 + 2 * b + 1 = 57) :
  b = 4 :=
begin

  have h₂ : 3 * b^2 + 2 * b + 1 ≠ 0, from (ne_of_gt h₀).pow (2 * 3 * b^2 + 2 * b + 1),
  have h₃ : 3 * b^2 + 2 * b + 1 > 0, from (ne_of_gt h₀).pow (2 * 3 * b^2 + 2 * b + 1),
  have h₄ : 3 * b^2 + 2 * b + 1 = 57, from h₁,
  have h₅ : 3 * b^2 + 2 * b = 56, from (sub_nonneg h₄ h₃).pow (2 * 3 * b^2 + 2 * b + 1),
  have h₆ : 3 * b^2 + 2 * b = 56, from (sub_nonneg h₄ h₃).pow (2 * 3 * b^2 + 2 * b + 1),
  have h₇ : 3 * b^2 = 54, from sub_eq h₆ (2 * b
end
