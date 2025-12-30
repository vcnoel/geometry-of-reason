import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  apply le_trans (mul_le_mul_of_nonneg_left (add_le_add_left (le_of_lt (lt_add_one a)) _) b)
    (add_le_add_right (le_of_lt (lt_add_one (a + 1))) (add_le_add_right (le_of_lt (lt_add_one (a + 1))) 0)),
  apply mul_le_mul_of_nonneg_left,
  apply le_of_lt,
  apply lt_add_one,

end
