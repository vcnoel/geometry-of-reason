import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  have h1 : 9^9 ≡ 1 (mod 10), from mod_by_10_power_of_9_eq_1,
  have h2 : (19^19 + 99^99) % 10 = (10 * 19^9 + 9^9) % 10 + (10 * 99^9 + 9^9) % 10,
  by {rw [add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod, add_mod
end
