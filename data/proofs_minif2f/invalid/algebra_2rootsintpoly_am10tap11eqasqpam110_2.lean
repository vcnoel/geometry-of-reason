import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem algebra_2rootsintpoly_am10tap11eqasqpam110
  (a : ℂ) :
  (a - 10) * (a + 11) = a^2 + a - 110 :=
begin

  -- Step 1: Use the distributive law to expand the product (a - 10) * (a + 11)
  expand (a - 10) * (a + 11),
  -- Step 2: Simplify the result using the distributive law and the definition of multiplication
  -- Step 3: Use the definition of exponentiation to rewrite a^2 as a * a
  rewrite a * a,
  -- Step 4: Combine like terms to simplify the expression
  combine_like_terms,
  -- Step 5: Use the definition of addition to rewrite a^2 + a as a * a + a
  rewrite a * a + a,
  -- Step 6: Use the definition of addition to rewrite a^2 + a - 110 as (a * a + a) - 110
  rewrite (a * a + a) - 110,
  -- Step 7: Use the definition of subtraction to rewrite (a * a + a) - 110 as a * a + a - 110
  rewrite a * a + a - 110,
  -- Step 8: Use the definition of subtraction to rewrite a^2 + a - 110 as
end
