import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  -- Since 100 is a multiple of 25, we can divide both sides of the equation by 25.
  rw [div_eq_mul_inv, mul_mod, mul_mod, mul_mod, mul_mod],
  -- 5^2005 % 25 = 25 % 25 = 0
  refl,
  -- (25^2005) % 100 = 25 % 100 = 25
  refl,
  -- 25^2005 % 100 = 25
  refl,
  -- 5^2005 % 100 = 25
  refl,

end
