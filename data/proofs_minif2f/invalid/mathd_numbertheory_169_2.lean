import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  calc
    nat.gcd (20!) (200000) = nat.gcd (20!) (2^5 * 5^5) : by ring_nf
   ... = nat.gcd (20!) ((2^5) * (5^5)) : by ring_nf
   ... = nat.gcd (20!) (2^5) * nat.gcd (20!) (5^5) : by apply gcd_mul_left
   ... = 2^5 * 5^5 * nat.gcd (20!) 1 : by apply gcd_mul_right
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring_nf
   ... = 2^5 * 5^5 : by ring
end
