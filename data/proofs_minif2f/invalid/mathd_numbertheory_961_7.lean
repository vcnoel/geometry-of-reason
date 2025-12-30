import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_961 :
  2003 % 11 = 1 :=
begin

  have h1: 2003 % 11 = 2003 - 11 * (2003 / 11) := by {apply tsub_eq_of_add_eq, apply mul_div_cancel_left, apply nat.succ_pos},
  have h2: 2003 / 11 = 181 + 2 := by {apply nat.div_add_one, apply nat.succ_pos},
  have h3: 11 * (181 + 2) = 2003 - 1 := by {rw [h2, h1], apply mul_add, apply add_sub_cancel_left},
  rw [sub_eq_add_neg, add_assoc, add_left_neg] at h3,
  exact h3

end
