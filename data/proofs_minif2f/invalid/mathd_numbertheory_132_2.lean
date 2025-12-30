import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_132 :
  2004 % 12 = 0 :=
begin

  calc 2004 % 12 = (2000 + 4) % 12 : by { rfl },
  calc _ = (2000 % 12 + 4) % 12 : by { rw [mod_add] },
  calc _ = (0 + 4) % 12 : by { rw [mod_2000] },
  calc _ = 4 : by { rfl },

end
