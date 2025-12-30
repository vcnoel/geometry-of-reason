import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_568
  (a : ℝ) :
  (a - 1) * (a + 1) * (a + 2) - (a - 2) * (a + 1) = a^3 + a^2 :=
begin

  ring_expanding,
  simp,
  ring_expanding,
  ring,
  simp,

end
