import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_51
  (a b : ℝ)
  (h₀ : 0 < a ∧ 0 < b)
  (h₁ : a + b = 35)
  (h₂ : a = (2/5) * b) :
  b - a = 15 :=
begin

  have h₃ : a ≠ 0 := by { intro h₄, have h₅ : 0 < a, from h₀.left, have h₆ : 0 < a * (2/5), from mul_pos h₅ (pos_div_pos_right 2 5), have h₇ : a * (2/5) = 35, from eq.trans (mul_eq_mul_left _ b) h₁, have h₈ : a = 70, from eq_div_of_mul_eq h₇ h₆, have h₉ : a < 0, from lt_of_le_of_lt (zero_le a) h₈, contradiction },
  have h₄ : b ≠ 0 := by { intro h₅, have h₆ : 0 < b, from h₀.right, have h₇ : 0 < b * (2/5), from mul_pos h₆ (pos_div_pos_right 2 5), have h₈ : b * (2/5) = 35, from eq.trans (mul_eq_mul_right _ a) h₁, have h₉ : b = 70, from eq_div_of_mul_eq h₈
end
