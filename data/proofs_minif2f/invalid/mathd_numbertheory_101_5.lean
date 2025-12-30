import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_101 :
  (17 * 18) % 4 = 2 :=
begin

  -- 17 % 4 = 1, 18 % 4 = 2
  -- 17 % 4 = 1 => 17 = 4k + 1
  -- 18 % 4 = 2 => 18 = 4m + 2
  -- (17 * 18) % 4 = ((4k + 1) * (4m + 2)) % 4
  -- = (4k * 4m + 4k * 2 + 4m * 1 + 2) % 4
  -- = (16km + 8k + 4m + 2) % 4
  -- = (8k + 4m + 2) % 4
  -- = 2
  ring_expansion (17 * 18) % 4 = 2,

end
