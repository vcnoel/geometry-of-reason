import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_169 :
  nat.gcd 20! 200000 = 40000 :=
begin

  -- We need to find the prime factorization of 20!
  -- The prime factorization of n! is the product of the prime factorizations of all numbers up to n
  -- The prime factorization of n is the product of the prime factorizations of all numbers up to n
  -- So, the prime factorization of 20! is the product of the prime factorizations of all numbers up to 20
  -- The prime factorization of 20 is 2^2 * 5
  -- The prime factorization of 19 is 19
  -- The prime factorization of 18 is 2 * 3^2
  -- The prime factorization of 17 is 17
  -- The prime factorization of 16 is 2^4
  -- The prime factorization of 15 is 3 * 5
  -- The prime factorization of 14 is 2 * 7
  -- The prime factoration of 13 is 13
  -- The prime factorization of 12 is 2^2 * 3
  -- The prime factorization of 11 is 11
  -- The prime factorization of 10 is 2 * 
end
