import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_388
  (x y z : ℝ)
  (h₀ : 3 * x + 4 * y - 12 * z = 10)
  (h₁ : -2 * x - 3 * y + 9 * z = -4) :
  x = 14 :=
begin
  linarith,
end