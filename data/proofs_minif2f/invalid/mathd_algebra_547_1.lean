import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_algebra_547
  (x y : ℝ)
  (h₀ : x = 5)
  (h₁ : y = 2) :
  real.sqrt (x^3 - 2^y) = 11 :=
begin

  -- 1 / 1
  rw h₀,
  -- 1 / 2
  rw h₁,
  -- 1 / 3
  calc real.sqrt (5^3 - 2^2) = real.sqrt (125 - 4) : by ring_nf
  -- 1 / 4
 ... = real.sqrt 121 : by ring_nf
  -- 1 / 5
 ... = 11 : by norm_num

end
