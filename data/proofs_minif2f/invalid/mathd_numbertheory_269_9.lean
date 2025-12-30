import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- First, we'll use the definition of modular arithmetic to simplify the expression
  -- (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = ((2005^2) % 100 + (2005^0) % 100 + (2005^0) % 100 + (2005^5) % 100) % 100,
  -- Then, we can use the properties of modular arithmetic to simplify each term separately
  -- (2005^2) % 100 = 25,
  -- (2005^0) % 100 = 1,
  -- (2005^0) % 100 = 1,
  -- (2005^5) % 100 = 25,
  -- Finally, we can combine the simplified terms to get the final result
  -- (25 + 1 + 1 + 25) % 100 = 52,
  -- 52 % 100 = 52,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,
  ring,

end
