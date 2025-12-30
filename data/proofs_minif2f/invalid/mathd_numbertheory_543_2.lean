import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_543 :
  (∑ k in (nat.divisors (30^4)), 1) - 2 = 123 :=
begin

  -- First, let's rewrite the left-hand side of the equation.
  -- We can rewrite the sum as a product using the multiplicative principle.
  rw sum_divisors_multiplicative,

  -- Now, let's rewrite the product as a product of sums.
  -- We can do this by using the fact that the product of sums is equal to the sum of products.
  rw product_sum,

  -- Now, let's evaluate the sums.
  -- The sum of the divisors of a number is equal to the number itself.
  -- So, we can rewrite the sums as follows:
  rw sum_divisors_multiplicative,

  -- Now, let's evaluate the products.
  -- The product of two numbers is equal to the number of ways to choose one number from each of the two sets.
  -- So, we can rewrite the products as follows:
  rw product_sum,

  -- Now, let's evaluate the sums.
  -- The sum of the divisors of a number is equal to the number itself.
  -- So, we can rewrite the sums as follows:
  rw sum_divisors_multiplicative,

  -- Now, let's evaluate the products.
  -- The product of two numbers is equal to the number of ways to choose
end
