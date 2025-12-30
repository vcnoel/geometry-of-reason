import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_123
  (a b : ℕ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 20)
  (h₂ : a = 3 * b) :
  a - b = 10 :=
begin

  have h₃ : a = 10 * b, from h₂,
  have h₄ : a = 10 * (20 / 10), from h₃.symm ▸ h₁ ▸ div_eq_of_mul_eq_mul_right (10 ^ 1) (20 ^ 1),
  have h₅ : a = 20, from h₄ ▸ div_mul_cancel 20 10,
  have h₆ : b = 10, from h₅ ▸ h₁ ▸ sub_eq_zero ▸ h₀.right ▸ not_lt_zero,
  have h₇ : a - b = 10, from h₅ ▸ h₆ ▸ sub_self,
  exact h₇,

end
