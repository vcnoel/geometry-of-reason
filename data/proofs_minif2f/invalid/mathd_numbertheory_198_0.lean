import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  have := (5^2005) % 100 = ((5^4)^501) % 100,
  rw [pow_int_power, pow_int_power],
  have := (5^4) % 100 = 25,
  rw this,
  have := (25^501) % 100 = 25,
  rw this,
  rw this,
  rw this,
  exact this,

end
