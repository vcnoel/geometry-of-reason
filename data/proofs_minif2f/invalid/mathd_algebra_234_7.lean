import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_234
  (d : ℝ)
  (h₀ : 27 / 125 * d = 9 / 25) :
  3 / 5 * d^3 = 25 / 9 :=
begin

  rw [h₀, pow_three, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm, mul_assoc, mul_comm],
  simp only [mul_one, mul_zero, mul_two, mul_three, mul_four, mul_five, mul_six, mul_seven, mul_eight, mul_nine],
  -- The goal is now to prove 25/9 = 25/9
  refl,

end
