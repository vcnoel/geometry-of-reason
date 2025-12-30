import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_4bap1lt4bsqpap1sq
  (a b : ℝ) :
  4 * b * (a + 1) ≤ 4 * b^2 + (a + 1)^2 :=
begin

  have : 4 * b * (a + 1) = 4 * b * a + 4 * b,
    by {rw add_mul},
  have : 4 * b^2 = 4 * b * b,
    by {rw mul_comm},
  have : (a + 1)^2 = a^2 + 2 * a + 1,
    by {rw pow_two],
  have : 4 * b^2 + (a + 1)^2 = 4 * b^2 + a^2 + 2 * a + 1,
    by {rw add_mul, rw mul_comm},
  rw this at this,
  rw this at this,
  have : 4 * b * a + 4 * b ≤ 4 * b^2 + a^2 + 2 * a + 1,
    by {rw this, rw this},
  have : 4 * b * a + 4 * b ≤ 4 * b^2 + (a^2 + 2 * a + 1),
    by {rw this, rw this},
  have : 4 * b * a + 4 * b ≤ (4 * b^2
end
