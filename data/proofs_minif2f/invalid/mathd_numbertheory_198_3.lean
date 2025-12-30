import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_198 :
  (5^2005) % 100 = 25 :=
begin

  have h1 := nat.mod_eq_of_div_eq (pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100)),
  have h2 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h3 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h4 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h5 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h6 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h7 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h8 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h9 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100),
  have h10 := pow_div_eq_of_mod_eq (mod_by_two_powers 2005 5 100
end
