import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  calc
    4 * b * (a + 1) = 4 * b * a + 4 * b
     ... = 4 * b * a + 4 * b^2 + 4 * b^2 - 4 * b^2
     ... ≤ 4 * b * a + 4 * b^2 + (b + a)^2 - 2 * b * a
     ... = 4 * b * a + 4 * b^2 + a^2 + 2 * a * b + b^2 - 2 * b * a
     ... = 4 * b * a + 4 * b^2 + a^2 + b^2
     ... ≤ 4 * b^2 + a^2 + b^2 + a^2
     ... = 4 * b^2 + (a + b)^2
     ... = 4 * b^2 + (a + 1)^2 - (1)^2
     ... ≤ 4 * b^2 + (a + 1)^2,
  rw [mul_assoc, add_assoc, mul_comm, add_assoc, mul_assoc],
  ring,
 
end
