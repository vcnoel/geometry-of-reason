import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_36azm9asqle36zsq
  (z a : ℝ) :
  36 * (a * z) - 9 * a^2 ≤ 36 * z^2 :=
begin

  have := 36 * (a * z) - 9 * a^2,
  have := 36 * z^2,
  have := ((36 * z^2) - (36 * (a * z) - 9 * a^2)) ≥ 0,
  have := (36 * z^2) - (36 * (a * z) - 9 * a^2) ≥ 0,
  have := (36 * z^2) ≥ (36 * (a * z) - 9 * a^2),
  have := (36 * z^2) ≥ (9 * a^2) + (36 * (a * z)),
  have := (9 * a^2) + (36 * (a * z)) ≥ (36 * (a * z)) - (9 * a^2),
  have := 0 ≥ (9 * a^2) + (36 * (a * z)) - (36 * (a * z)) + (9 * a^2),
  have := 0 ≥ (9 * a^2) + (9 * a^2),
  have := 0 ≥ (18 * a^2),
  have
end
