import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  have h1 := pow_two_le_sq a,
  have h2 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h3 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h4 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h5 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h6 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h7 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h8 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h9 := sq_le_sq_of_mul_nonneg (le_of_eq (pow_two a)) (le_of_eq (pow_two b)),
  have h10 :=
end
