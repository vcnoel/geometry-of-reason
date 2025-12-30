import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_739 :
  9! % 10 = 0 :=
begin

  apply_modulo 10,
  have : 9! % 10 = ((9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 10),
  { apply_modulo 10,
    ring },
  apply_modulo 10,
  have : (9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 10 = ((9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 2 * (9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 5),
  { apply_modulo 10,
    ring },
  have : (9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 2 = 1,
  { apply_modulo 2,
    ring },
  have : (9 * 8 * 7 * 6 * 5 * 4 * 3 * 2 * 1) % 5 = 
end
