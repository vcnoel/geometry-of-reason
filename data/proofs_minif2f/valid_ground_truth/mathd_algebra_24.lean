import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_24
  (x : ℝ)
  (h₀ : x / 50 = 40) :
  x = 2000 :=
begin
  nlinarith,
end