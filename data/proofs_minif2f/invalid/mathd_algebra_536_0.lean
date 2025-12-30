import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_536 :
  ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2 = (33 : ℝ) :=
begin

  simp [factorial, real.sqrt, pow],
  ring,

end
