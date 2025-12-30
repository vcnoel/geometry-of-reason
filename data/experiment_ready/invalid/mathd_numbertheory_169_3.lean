import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  have h1 : nat.gcd 20! 200000 = nat.gcd (20 * 20!) 200000, by { apply nat.gcd_mul_left },
  have h2 : nat.gcd (20 * 20!) 200000 = nat.gcd (20 * 20!) (20 * 20!), by { apply nat.gcd_mul_left },
  have h3 : nat.gcd (20 * 20!) (20 * 20!) = 20 * 20!, by { apply nat.gcd_self },
  have h4 : 20! = 20 * 20!, by { apply nat.factorial_mul },
  have h5 : 40000 = 20 * 20!, by { apply nat.factorial_20 },
  have h6 : 40000 = nat.gcd (20 * 20!) (20 * 20!), by { apply h3 },
  have h7 : nat.gcd (20 * 20!) (20 * 20!) = nat.gcd 20! 20!, by { apply h4 },
  have h8 : nat.gcd 20! 20! = 20!, by { apply nat.gcd_self },
  have h
end
