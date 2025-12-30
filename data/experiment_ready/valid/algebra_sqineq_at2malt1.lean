import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_sqineq_at2malt1
  (a : ℝ) :
  a * (2 - a) ≤ 1 :=
begin
  suffices: 0 ≤ a^2 - 2*a + 1, nlinarith,
  suffices: 0 ≤ (a - 1)^2, nlinarith,
  nlinarith,
end