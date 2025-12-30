import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_354
  (a d : ℝ)
  (h₀ : a + 6 * d = 30)
  (h₁ : a + 10 * d = 60) :
  a + 20 * d = 135 :=
begin
  linarith,
end