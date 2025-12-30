import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_102 :
  (2^8) % 5 = 1 :=
begin

  have h1 := mod_eq_zero_iff_dvd.mpr (dvd_of_mod_eq (mod_eq_of_pow_sub_one (pow_pos (pow_pos 2 8) 0) (sub_pos 1 (pow_pos 2 8)))),
  have h2 := mod_eq_zero_iff_dvd.mpr (dvd_of_mod_eq (mod_eq_of_pow_sub_one (pow_pos 5 0) (sub_pos 1 (pow_pos 5 0)))),
  have h3 := mod_eq_zero_iff_dvd.mpr (dvd_of_mod_eq (mod_eq_of_pow_sub_one (pow_pos 5 0) (sub_pos 1 (pow_pos 5 0)))),
  have h4 := mod_eq_zero_iff_dvd.mpr (dvd_of_mod_eq (mod_eq_of_pow_sub_one (pow_pos 5 0) (sub_pos 1 (pow_pos 5 0)))),
  have h5 := mod_eq_zero_iff_dvd.mpr (dvd_of_mod_eq (mod_eq_of_pow_sub_one (pow_pos 5 0) (sub_pos 1 (pow_pos 5 0)))),
  have h6 := mod_eq_zero_iff_d
end
