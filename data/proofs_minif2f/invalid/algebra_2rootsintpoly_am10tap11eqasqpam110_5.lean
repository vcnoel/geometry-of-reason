import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootsintpoly_am10tap11eqasqpam110
  (a : ℂ) :
  (a - 10) * (a + 11) = a^2 + a - 110 :=
begin

  -- rewrite the left-hand side as a difference of squares
  -- a^2 - 10a + 11a - 110 = a^2 - a - 110,
  -- now add a to both sides to get a^2 + a - 110.
  rw [sub_mul, add_mul],
  -- now we can cancel out the common factor of a on the left-hand side.
  -- We are left with -10 + 11.
  rw [sub_add_cancel],
  -- we can simplify this to 1.
  -- The left-hand side is now just a^2 + a - 110.
  -- This is equal to the right-hand side.
  refl,

end
