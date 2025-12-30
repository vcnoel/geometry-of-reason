import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  have h1 : (a - 6 * z) * (a - 6 * z) ≥ 0,
    by apply (mul_nonneg a (6 * z)),
  have h2 : (a - 6 * z)^2 ≥ 0,
    by apply (pow_nonneg 2 (a - 6 * z)),
  have h3 : 36 * (a - 6 * z)^2 ≥ 0,
    by apply (mul_nonneg (36 * (a - 6 * z)) (a - 6 * z)),
  have h4 : 36 * (a - 6 * z)^2 = 36 * (a^2 - 12 * a * z + 36 * z^2),
    by apply (pow_mul 2 (a - 6 * z)),
  have h5 : 36 * (a^2 - 12 * a * z + 36 * z^2) = 36 * a^2 - 432 * a * z + 1296 * z^2,
    by apply (mul_comm 36 (a^2 - 12 * a * z + 36 * z^2)),
  have
end
