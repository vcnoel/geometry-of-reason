import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_45 :
  (nat.gcd 6432 132) + 11 = 23 :=
begin

  calc (nat.gcd 6432 132) + 11 = (nat.gcd 132 6432) + 11 : by abel
 ... = (nat.gcd 132 (6432 % 132)) + 11 : by congr ; ring
 ... = (nat.gcd 132 0) + 11 : by congr ; ring
 ... = 11 : by congr ; ring
 ... = 23 : by congr ; ring,

end
