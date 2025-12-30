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

  rw h₀,
  -- 2 * (2 * (2 * (2 * x))) = 48,
  rw mul_assoc,
  -- (2 * 2) * (2 * (2 * x)) = 48,
  rw mul_assoc,
  -- (2 * 2) * (2 * 2) * x = 48,
  rw mul_assoc,
  -- (2 * (2 * 2)) * (2 * x) = 48,
  rw mul_assoc,
  -- (2 * (2 * (2 * 2))) * x = 48,
  rw mul_assoc,
  -- 2 * (2 * (2 * (2 * x))) = 48,
  rw mul_assoc,
  -- 2 * 48 = 48,
  rw mul_zero,
  -- 0 = 48,
  rw add_zero,
  -- 48 + 0 = 48,
  rw add_comm,
  -- 0 + 48 = 48,
  rw add_left_eq_self,
  -- 0 + 48 = 48,
  rw add_right_eq_self,
  -- 48 + 0 = 48,
  rw add_comm,
 
end
