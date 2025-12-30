import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_403 :
  ∑ k in (nat.proper_divisors 198), k = 270 :=
begin

  have h1 : nat.proper_divisors 198 = {2, 3, 9, 11, 18, 33, 66, 99},
  by {norm_num},
  have h2 : ∑ k in {2, 3, 9, 11, 18, 33, 66, 99}, k = 2 + 3 + 9 + 11 + 18 + 33 + 66 + 99,
  by {norm_num},
  have h3 : 2 + 3 + 9 + 11 + 18 + 33 + 66 + 99 = 231 + 39,
  by {norm_num},
  have h4 : 231 + 39 = 270,
  by {norm_num},
  show ∑ k in nat.proper_divisors 198, k = 270,
  by {rw [h1, h2, h3, h4]}

end
