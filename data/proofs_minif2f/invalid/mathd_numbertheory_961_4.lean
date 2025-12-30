import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_961 :
  2003 % 11 = 1 :=
begin

  calc 2003 % 11 = (2000 + 3) % 11 : by ring
   ... = (2000 % 11 + 3) % 11 : by {rw [mod_add, add_comm], simp}
   ... = (0 + 3) % 11 : by {rw [mod_self, add_zero], simp}
   ... = 3 : by ring,

end
