import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- First, we will evaluate the expression 2005^2 % 100
  have h1 : 2005^2 % 100 = 0, by {
    -- We will use the definition of exponentiation
    -- 2005^2 % 100 = (2005 % 100)^2 % 100
    have h2 : 2005 % 100 = 5, by {
      -- We will use the definition of modulus
      -- 2005 % 100 = 2005 - 2000 = 5
    },
    -- Now, we will substitute the value of 2005 % 100 into the expression
    have h3 : (2005 % 100)^2 % 100 = 5^2 % 100,
    by {
      -- We will use the definition of exponentiation
      -- (2005 % 100)^2 % 100 = (2005 % 100) * (2005 % 100) % 100
    },
    -- Now, we will evaluate the expression 5^2 % 100
    have h4 : 5^2 % 100 = 25, by {
      -- We will use the definition
end
