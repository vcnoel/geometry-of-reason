import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  have h1 : (19^19 + 99^99) % 10 = ((19 % 10)^19 + (99 % 10)^99) % 10,
    by { apply mod_add_mod,
         apply mod_pow, apply mod_self },
  have h2 : (19 % 10)^19 = 9^19,
    by { apply pow_mod, apply mod_self },
  have h3 : (99 % 10)^99 = 9^99,
    by { apply pow_mod, apply mod_self },
  have h4 : 9^19 % 10 = 9,
    by { apply pow_mod, apply mod_self },
  have h5 : 9^99 % 10 = 9,
    by { apply pow_mod, apply mod_self },
  have h6 : 9 + 9 = 18,
    by { apply add_right_inj, apply one_add },
  have h7 : 18 % 10 = 8,
    by { apply mod_self },
  have h8 : h7 = 8,
    by { apply eq_self_iff_true, apply h7 },
  have h9 : (9^19 + 9^99) %
end
