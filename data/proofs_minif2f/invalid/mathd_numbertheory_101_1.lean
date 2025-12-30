import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_101 :
  (17 * 18) % 4 = 2 :=
begin

  -- We need to show that (17 * 18) % 4 = 2.
  -- We can do this by computing 17 * 18 % 4.
  calc
    (17 * 18) % 4 = (17 * (18 % 4)) % 4,
    -- We can use the fact that 18 % 4 = 2.
    -- Now, we can compute 17 * 2 % 4.
    -- This is equal to (17 % 4) * 2 % 4.
    -- We can use the fact that 17 % 4 = 1.
    -- Now, we can compute 1 * 2 % 4.
    -- This is equal to 2 % 4.
    -- This is equal to 2.
    by { simp, ring }

end
