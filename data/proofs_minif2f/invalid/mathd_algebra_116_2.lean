import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_116
  (k x: ℝ)
  (h₀ : x = (13 - real.sqrt 131) / 4)
  (h₁ : 2 * x^2 - 13 * x + k = 0) :
  k = 19/4 :=
begin

  rw h₀,
  rw h₁,
  ring,

end
