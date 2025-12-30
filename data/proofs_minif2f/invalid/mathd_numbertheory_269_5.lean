import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- Step 1: Calculate the powers of 2005
  let a := 2005^2,
  let b := 2005^0,
  let c := 2005^5,

  -- Step 2: Add up the powers
  let sum := a + b + b + c,

  -- Step 3: Calculate the sum modulo 100
  have sum_mod_100_eq_52 : sum % 100 = 52,
  
end
