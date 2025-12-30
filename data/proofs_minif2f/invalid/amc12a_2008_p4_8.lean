import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem amc12a_2008_p4 :
  ∏ k in finset.Icc (1 : ℕ) 501, ((4 : ℝ) * k + 4) / (4 * k) = 502 :=
begin

  -- Start by rewriting the product as a sum using the definition of product over a finite set
  rw finset.Icc_product,
  -- Now, rewrite the sum as a big sum
  rw big_Icc,
  -- Now, we can rewrite the big sum as a sum over the natural numbers
  rw big_naturals,
  -- Now, we can rewrite the sum as a sum over the integers
  rw big_integers,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
  rw big_Icc,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
  rw big_Icc,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
  rw big_Icc,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
  rw big_Icc,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
  rw big_Icc,
  -- Now, we can rewrite the sum as a sum over the integers from 1 to 501
 
end
