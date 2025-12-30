import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_251
  (x : ℝ)
  (h₀ : x ≠ 0)
  (h₁ : 3 + 1 / x = 7 / x) :
  x = 2 :=
begin

  have h₂ : 3 + 1/x = 7/x,
  { exact h₁ },
  have h₃ : 3x + 1 = 7,
  { rw [mul_div_cancel_left, ← mul_div_cancel_left],
    exact h₂ },
  have h₄ : 3x = 6,
  { exact sub_eq_zero.1 (sub_eq_zero.2 (eq_sub_of_add_eq h₃)) },
  have h₅ : x = 2,
  { exact eq_of_mul_eq_mul_right h₄ (ne_of_gt (lt_of_lt_of_le zero_lt_three three_le_six)) },
  exact h₅

end
