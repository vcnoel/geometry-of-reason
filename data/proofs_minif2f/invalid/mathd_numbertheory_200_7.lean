import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_200 :
  139 % 11 = 7 :=
begin

  calc 139 = 12 + 7 : rfl,
  ring_nf,
  calc 12 % 11 = 1 : by norm_num,
  calc 7 % 11 = 7 : by norm_num,
  rw [add_assoc, add_left_comm, add_comm 12 1, add_assoc, add_left_comm, add_comm 1 7, add_assoc, add_left_comm, add_comm 1 7],
  ring_nf,
  exact rfl

end
