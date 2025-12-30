import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_101 :
  (17 * 18) % 4 = 2 :=
begin

  -- First, calculate 17 * 18
  let prod : ℕ := 17 * 18,
  -- Then, calculate prod % 4
  let rem : ℕ := prod % 4,
  -- Now, show that rem = 2
  show rem = 2,
  -- This is straightforward: 17 * 18 = 306, and 306 % 4 = 2
  by rw [prod, rem],

end
