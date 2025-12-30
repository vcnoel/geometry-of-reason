import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  -- 2^8 = 256
  have h1 : 2^8 = 256, by {rw [power, power, power, power, power, power, power, power, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two, pow_two], refl},
  -- 256 % 5 = 1
  have h2 : 256 % 5 = 1, by {rw [mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod, mod], refl},
  -- Therefore, 2^8 % 5 = 1
  have h3 : (2^8) % 5 = 1, by {rw [h1, h2]},
  exact h3

end
