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

  rw h₁ at h₂,
  have h₃ : b = 20 / 4,
  from (mul_div_cancel' (20) 4).symm,

  have h₄ : a = 15,
  from (mul_div_cancel' (60) 4).symm,

  have h₅ : a - b = 15 - 5,
  from (sub_eq_sub h₄ h₃),

  have h₆ : a - b = 10,
  from (eq_sub_of_add_eq h₅),

  exact h₆,

end
