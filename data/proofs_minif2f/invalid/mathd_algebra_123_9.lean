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

  have h₃ : 3 * b = a,
  from h₂,

  have h₄ : 3 * b ≠ 0,
  from mt (mul_ne_zero a) h₀.right,

  have h₅ : (a + b) / (3 * b) = 7,
  from (div_eq_of_mul_eq h₁ h₃).symm,

  have h₆ : (a - b) / b = 2,
  from (sub_div_eq_of_mul_eq_sub h₃).symm,

  have h₇ : (a - b) = 2 * b,
  from (mul_div_cancel' h₆ b).symm,

  have h₈ : a - b = 2 * b,
  from eq.trans h₇ (mul_comm b 2),

  have h₉ : a - b = 10,
  from eq.trans h₈ (eq.trans (mul_eq_mul_right b 5) (eq.trans (mul_comm b 5) (eq.mul_one b * 5))),

  exact h₉,

end
