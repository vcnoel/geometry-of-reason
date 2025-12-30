import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_3 :
  (∑ x in finset.range 10, ((x + 1)^2)) % 10 = 5 :=
begin
  dec_trivial!,
end