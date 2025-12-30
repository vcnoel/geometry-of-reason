import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_432
  (x : ℝ) :
  (x + 3) * (2 * x - 6) = 2 * x^2 - 18 :=
begin
  linarith,
end