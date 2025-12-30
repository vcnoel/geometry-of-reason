import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_101 :
  (17 * 18) % 4 = 2 :=
begin

  calc (17 * 18) % 4 = (17 * (18 % 4)) % 4,
    by {rw [mod_eq_mod_add_div 18 4]},
  calc (17 * (18 % 4)) % 4 = (17 * 2) % 4,
    by {rw [mod_eq_mod_add_div 18 4]},
  calc (17 * 2) % 4 = (17 * 2) % 4,
    by {simp},
  calc (17 * 2) % 4 = 34 % 4,
    by {simp},
  calc 34 % 4 = 2,
    by {simp},

end
