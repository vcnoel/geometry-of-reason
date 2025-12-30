import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  -- 36 * (a * z) - 9 * a^2 ≤ 36 * z^2
  -- (36 * a - 9 * a^2) * z ≤ 36 * z^2
  -- (36 * a - 9 * a^2) * z - 36 * z^2 ≤ 0
  -- z * ((36 * a - 9 * a^2) - 36 * z) ≤ 0
  -- (36 * a - 36 * z) * z - 9 * a^2 * z ≤ 0
  -- (36 * a - 36 * z) * z ≤ 9 * a^2 * z
  -- z * (36 * a - 36 * z) ≤ 9 * a^2 * z
  -- z * (36 * (a - z)) ≤ 9 * a^2 * z
  -- 36 * z * (a - z) ≤ 9 * a^2 * z
  -- 36 * z * (a - z) - 9 * a^2 * z ≤ 0
  -- z * (36 * (a -
end
