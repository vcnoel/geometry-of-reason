import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  apply nat.gcd_eq_of_dvd_mul,
  { apply nat.factorial_dvd,
    apply nat.pow_dvd_pow,
    apply nat.pow_dvd_pow,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factorial_dvd,
    apply nat.factor
end
