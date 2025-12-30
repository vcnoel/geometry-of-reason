import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_109
  (a b : ℝ)
  (h₀ : 3 * a + 2 * b = 12)
  (h₁ : a = 4) :
  b = 0 :=
begin
  linarith,
end