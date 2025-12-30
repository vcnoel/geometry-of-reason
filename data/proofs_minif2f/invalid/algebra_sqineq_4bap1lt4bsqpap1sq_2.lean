import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  have h1 : 4 * b * (a + 1) = 4 * b * a + 4 * b,
    by simp [mul_add, mul_comm],
  have h2 : 4 * b^2 + (a + 1)^2 = 4 * b^2 + a^2 + 2 * a + 1,
    by simp [pow_add, pow_one, add_mul],
  have h3 : 4 * b * a + 4 * b ≤ 4 * b^2 + a^2 + 2 * a + 1,
  
end
