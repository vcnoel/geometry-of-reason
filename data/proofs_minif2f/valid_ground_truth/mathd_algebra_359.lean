import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_359
  (y : ℝ)
  (h₀ : y + 6 + y = 2 * 12) :
  y = 9 :=
begin
  linarith,
end