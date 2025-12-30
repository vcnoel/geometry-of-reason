import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12_2000_p11
  (a b : ℝ)
  (h₀ : a ≠ 0 ∧ b ≠ 0)
  (h₁ : a * b = a - b) :
  a / b + b / a - a * b = 2 :=
begin

  have h₂ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs_pos b) 2))),
  have h₃ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs_pos b) 2))),
  have h₄ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs_pos b) 2))),
  have h₅ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs_pos b) 2))),
  have h₆ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs_pos b) 2))),
  have h₇ := div_mul_cancel _ _ (ne_of_gt (sub_pos_of_le_of_lt (pow_pos (abs_pos a) 2) (pow_pos (abs
end
