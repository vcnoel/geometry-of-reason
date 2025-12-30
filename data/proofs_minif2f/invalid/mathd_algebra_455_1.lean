import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_455
  (x : ℝ)
  (h₀ : 2 * (2 * (2 * (2 * x))) = 48) :
  x = 3 :=
begin

  -- 2 * (2 * (2 * (2 * x))) = 48,
  rw h₀,
  -- 2 * (2 * (2 * 3)) = 48,
  rw h₀,
  -- 2 * (2 * 6) = 48,
  rw h₀,
  -- 2 * 12 = 48,
  rw h₀,
  -- 24 = 48,
  rw h₀,
  -- 0 = 48,
  sorry,

end
