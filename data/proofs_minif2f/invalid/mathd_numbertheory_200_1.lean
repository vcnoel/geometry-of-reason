import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_200 :
  139 % 11 = 7 :=
begin

  -- 139 = 12 * 11 + 7
  have h1 : 139 = 12 * 11 + 7, by ring,
  -- 139 % 11 = (12 * 11 + 7) % 11
  have h2 : 139 % 11 = (12 * 11 + 7) % 11, by rw h1,
  -- (12 * 11 + 7) % 11 = 7
  have h3 : (12 * 11 + 7) % 11 = 7, by congr,
  -- 139 % 11 = 7
  have h4 : 139 % 11 = 7, by rw h2 h3,
  exact h4

end
