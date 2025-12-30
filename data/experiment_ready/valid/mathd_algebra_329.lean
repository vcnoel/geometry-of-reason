import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_329
  (x y : ℝ)
  (h₀ : 3 * y = x)
  (h₁ : 2 * x + 5 * y = 11) :
  x + y = 4 :=
begin
  linarith,
end