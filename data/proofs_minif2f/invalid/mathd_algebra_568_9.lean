import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_568
  (a : ℝ) :
  (a - 1) * (a + 1) * (a + 2) - (a - 2) * (a + 1) = a^3 + a^2 :=
begin

  simp [mul_assoc, mul_comm, mul_left_distrib, mul_right_distrib, add_assoc, add_comm, add_left_distrib, add_right_distrib],
  rw [mul_add, mul_sub, add_sub_assoc, add_sub_cancel_left, add_sub_cancel_right],
  ring,

end
