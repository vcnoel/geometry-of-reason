import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_400
  (x : ℝ)
  (h₀ : 5 + 500 / 100 * 10 = 110 / 100 * x) :
  x = 50 :=
begin
  linarith,
end