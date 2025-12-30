import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_202 :
  (19^19 + 99^99) % 10 = 8 :=
begin

  have h1: (19^19 + 99^99) % 10 = ((19^19)%10 + (99^99)%10)%10,
  by { rw [mod_add, mod_mod] },
  have h2: (19^19)%10 = 9,
  by { calc (19^19)%10 = 9 % 10 : by norm_num },
  have h3: (99^99)%10 = 9,
  by { calc (99^99)%10 = 9 % 10 : by norm_num },
  have h4: (9 + 9)%10 = 8,
  by { norm_num },
  have h5: ((19^19)%10 + (99^99)%10)%10 = 8,
  by { rw [h4] },
  have h6: (19^19 + 99^99) % 10 = 8,
  by { rw [h1, h5] },
  exact h6,

end
