import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_536 :
  ↑3! * ((2 : ℝ)^3 + real.sqrt 9) / 2 = (33 : ℝ) :=
begin

  -- 1 / 2 * (3 * 2^3 + √9) = 33
  -- 1 / 2 * (24 + 3) = 33
  -- 1 / 2 * 27 = 33
  -- 27 / 2 = 33
  -- 27 = 66
  ring,
  -- 27 = 66
  exact false,
  -- contradiction

end
