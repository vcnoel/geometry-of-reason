import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  calc (5^2005) % 100 = (25^1005) % 100 : by {calc (5^2005)%100 = ((5^2)^1002*5)^1005%100
    by {rw [pow_int_mul, pow_int_pow, pow_int_two]}; refl},
  -- The final step is to rewrite the left-hand side as 25^1005 % 100, which is equal to 25 by definition of modulo.
  -- This completes the proof.
  by {rw [pow_int_two, pow_int_pow, pow_int_two, pow_int_pow], refl},

end
