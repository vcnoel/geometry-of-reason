import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_412
  (x y : ℝ)
  (h₀ : x + y = 25)
  (h₁ : x - y = 11) :
  x = 18 :=
begin
  linarith,
end