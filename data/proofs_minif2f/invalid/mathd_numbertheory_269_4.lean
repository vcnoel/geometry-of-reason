import minif2f_import

open_locale big_operators
open_locale real
open_locale nat
open_locale topological_space

theorem mathd_numbertheory_269 :
  (2005^2 + 2005^0 + 2005^0 + 2005^5) % 100 = 52 :=
begin

  -- We calculate the powers of 2005
  let m2005_2 : ℕ := 2005 ^ 2,
  let m2005_0 : ℕ := 2005 ^ 0,
  let m2005_5 : ℕ := 2005 ^ 5,

  -- We calculate the sum
  let sum : ℕ := m2005_2 + m2005_0 + m2005_0 + m2005_5,

  -- We apply the modulo operation
  let mod_sum : ℕ := sum % 100,

  -- We check if the result is equal to 52
  have mod_eq_52 : mod_sum = 52,
  from 
end
