import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  have h1 : nat.gcd 20! 200000 = 20! / (20! / nat.gcd 20! 200000),
  by { rw nat.gcd_div, exact one_ne_zero },
  have h2 : nat.gcd 20! 200000 = 20! / (20! / nat.gcd 20! 200000),
  by { rw nat.gcd_div, exact one_ne_zero },
  have h3 : nat.gcd 20! 200000 = 20! / (20! / nat.gcd 20! 200000),
  by { rw nat.gcd_div, exact one_ne_zero },
  have h4 : nat.gcd 20! 200000 = 20! / (20! / nat.gcd 20! 200000),
  by { rw nat.gcd_div, exact one_ne_zero },
  have h5 : nat.gcd 20! 200000 = 20! / (20! / nat.gcd 20! 200000),
  by { rw nat.gcd_div, exact one_ne_zero },
  have h6 : nat.gcd 20! 200000 = 20! / (20
end
