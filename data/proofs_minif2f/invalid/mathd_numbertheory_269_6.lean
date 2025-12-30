import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- Step 1: Calculate 2005^2 % 100
  calc 2005^2 % 100 = (2005^2) % 100,
  -- Step 2: Calculate 2005^0 % 100
  calc (2005^0) % 100 = 1,
  -- Step 3: Calculate 2005^0 % 100
  calc (2005^0) % 100 = 1,
  -- Step 4: Calculate 2005^5 % 100
  calc 2005^5 % 100 = (2005^5) % 100,
  -- Step 5: Add the results of the previous steps
  calc (2005^2 % 100 + 2005^0 % 100 + 2005^0 % 100 + 2005^5 % 100) % 100 = 
       ((2005^2) % 100 + 1 + 1 + (2005^5) % 100) % 100,
  -- Step 6: Simplify the expression
  calc ((2005^2) % 100 + 1 + 1 + (2005
end
