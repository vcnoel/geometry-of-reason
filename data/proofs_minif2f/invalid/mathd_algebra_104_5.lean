import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_104
  (x : ℝ)
  (h₀ : 125 / 8 = x / 12) :
  x = 375 / 2 :=
begin

  rw h₀,
  ring,

end
